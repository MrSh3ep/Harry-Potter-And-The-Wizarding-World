execute as @a run function pack:main/spells/function/api/gui/define_slot {font:"pack:item_wheel", character:"\ue001", pos_x:"15", pos_y:"05", align:"1"}

#font: Specifies the font namespace of the unicode character.
#character: Specifies the characters unicode ID that will display
#pos_x: defines the position x on the grid where the character displays 1-29, 1 being furthest top left of screen
#pos_y: defines the position y on the grid where the character displays 1-15 1 being furthest top left of screen
#align: defines the characters allignment to the grid. 0-4. 0-center, 1-right, 2-bottom, 3-left, 4-top

#the pipeline will read the pos_x, pos_y, and align as one hex color so in this case #011505. Then the custom core shader will read that specific color, decode it as pos_x = 15, pos y = 05 or 5, and align as 1. After it moves the unicode it will errase that color from the screen, to preserve the unicodes real color.