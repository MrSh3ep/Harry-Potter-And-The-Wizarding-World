# size: one hex digit, 1-f. Actual shader glyph size is size * 8 pixels at the fixed GUI scale.
# Examples: size "3" = 24px, size "6" = 48px, size "8" = 64px.
$data modify storage pack:gui_api actionbar append value {text:"$(character)",font:"$(font)",color:"#$(size)$(align)$(pos_x)$(pos_y)",shadow_color:0,bold:false,italic:false}