$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$sourceDirectory = "C:\Users\levim\Datapacks\HPWW\Versions\GIT\HPWW Resource Pack"
$outputArchive = "C:\Users\levim\Downloads\mcss_win-x86-64_v13.10.0\servers\Harry Potter Datapack Development Server\plugins\ResourcePackManager\mixer\HPWW.zip"
$temporaryArchive = "$outputArchive.building"

Add-Type -AssemblyName System.IO.Compression.FileSystem

function Build-ResourcePack {
    if (-not (Test-Path -LiteralPath $sourceDirectory -PathType Container)) {
        throw "Resource-pack source folder was not found: $sourceDirectory"
    }

    $outputDirectory = Split-Path -Parent $outputArchive
    if (-not (Test-Path -LiteralPath $outputDirectory -PathType Container)) {
        throw "ResourcePackManager mixer folder was not found: $outputDirectory"
    }

    if ([System.IO.File]::Exists($temporaryArchive)) {
        [System.IO.File]::Delete($temporaryArchive)
    }

    [System.IO.Compression.ZipFile]::CreateFromDirectory(
        $sourceDirectory,
        $temporaryArchive,
        [System.IO.Compression.CompressionLevel]::Optimal,
        $false
    )

    $replaced = $false
    for ($attempt = 1; $attempt -le 10 -and -not $replaced; $attempt++) {
        try {
            [System.IO.File]::Move($temporaryArchive, $outputArchive, $true)
            $replaced = $true
        }
        catch {
            if ($attempt -eq 10) {
                throw
            }
            Start-Sleep -Milliseconds 250
        }
    }

    $size = (Get-Item -LiteralPath $outputArchive).Length
    $timestamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[HPWW] Rebuilt HPWW.zip at $timestamp ($size bytes). Run /rspm reload to apply it."
}

$watcher = [System.IO.FileSystemWatcher]::new($sourceDirectory)
$watcher.IncludeSubdirectories = $true
$watcher.NotifyFilter = [System.IO.NotifyFilters]::FileName `
    -bor [System.IO.NotifyFilters]::DirectoryName `
    -bor [System.IO.NotifyFilters]::LastWrite `
    -bor [System.IO.NotifyFilters]::Size

try {
    Write-Host "[HPWW] Watching: $sourceDirectory"
    Build-ResourcePack
    Write-Host "[HPWW] Initial build complete. Leave this task running while editing."

    while ($true) {
        $change = $watcher.WaitForChanged([System.IO.WatcherChangeTypes]::All)
        if ($change.TimedOut) {
            continue
        }

        # Wait until VS Code and any asset tools have stopped writing for 750 ms.
        do {
            $nextChange = $watcher.WaitForChanged(
                [System.IO.WatcherChangeTypes]::All,
                750
            )
        } while (-not $nextChange.TimedOut)

        try {
            Build-ResourcePack
        }
        catch {
            Write-Warning "[HPWW] Build failed: $($_.Exception.Message)"
        }
    }
}
finally {
    $watcher.Dispose()
    if ([System.IO.File]::Exists($temporaryArchive)) {
        [System.IO.File]::Delete($temporaryArchive)
    }
}
