execute as @s run function pack:main/spells/function/api/gui/begin
execute as @s run function pack:main/spells/function/api/gui/define_slot {font:"pack:item_wheel", character:"\ue002", pos_x:"15", pos_y:"08", align:"0", size:"6"}
execute as @s run function pack:main/spells/function/api/gui/define_slot {font:"pack:item_wheel", character:"\ue001", pos_x:"15", pos_y:"09", align:"0", size:"6"}
execute as @s run function pack:main/spells/function/api/gui/draw

# begin clears the current GUI actionbar component list, but keeps the base actionbar layer.
# define_slot appends one glyph component to the GUI list; it does not display by itself.
# draw sends one actionbar containing the saved base layer plus every appended GUI glyph.
# pos_x: two digits, 01-29. 15 is the center column. Do not use 015.
# pos_y: two digits, 01-15. 08 is the center row.
# align: 0-4. 0=center, 1=right, 2=bottom, 3=left, 4=top.
# size: one hex digit, 1-f. Shader size = size * 8 px. Use 6 for font height 48, 3 for 24, 8 for 64.
