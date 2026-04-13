# Rebuild the cached page data stored in each player's PDB storage.
data remove storage pdb:main in
data remove storage pdb:main out
function pdb:get_me_cached
data modify storage pdb:main in set from storage pdb:main out

data modify storage pack:spell_wheel_cache_context copy_page set value {page:1}
function pack:main/spellwheel/wheel/function/cache/copy_page with storage pack:spell_wheel_cache_context copy_page
data modify storage pack:spell_wheel_cache_context copy_page set value {page:2}
function pack:main/spellwheel/wheel/function/cache/copy_page with storage pack:spell_wheel_cache_context copy_page
data modify storage pack:spell_wheel_cache_context copy_page set value {page:3}
function pack:main/spellwheel/wheel/function/cache/copy_page with storage pack:spell_wheel_cache_context copy_page
data modify storage pack:spell_wheel_cache_context copy_page set value {page:4}
function pack:main/spellwheel/wheel/function/cache/copy_page with storage pack:spell_wheel_cache_context copy_page
data modify storage pack:spell_wheel_cache_context copy_page set value {page:5}
function pack:main/spellwheel/wheel/function/cache/copy_page with storage pack:spell_wheel_cache_context copy_page
data modify storage pack:spell_wheel_cache_context copy_page set value {page:6}
function pack:main/spellwheel/wheel/function/cache/copy_page with storage pack:spell_wheel_cache_context copy_page
data modify storage pack:spell_wheel_cache_context copy_page set value {page:7}
function pack:main/spellwheel/wheel/function/cache/copy_page with storage pack:spell_wheel_cache_context copy_page

function pdb:save_me
scoreboard players set @s spell_wheel_cache_dirty 0
