execute as @a run function pack:main/spells/function/api/gui/define_slot {font:"pack:item_wheel", character:"\ue001", pos_x:"15", pos_y:"05", align:"1"}

#font: Specifies the font namespace of the unicode character.
#character: Specifies the characters unicode ID that will display
#pos_x: two digits, 01-29. 15 is the center column. Do not use 015.
#pos_y: two digits, 01-15. 08 is the center row.
#align: defines the characters allignment to the grid. 0-4. 0-center, 1-right, 2-bottom, 3-left, 4-top

#the pipeline will read the pos_x, pos_y, and align as one hex color so in this case #011505. Then the custom core shader will read that specific color, decode it as pos_x = 15, pos y = 05 or 5, and align as 1. After it moves the unicode it will errase that color from the screen, to preserve the unicodes real color.