#declare objective settings_menu_cancel
#declare objective settings_menu_bind_spell
#declare objective settings_menu_reset_player_data
scoreboard players reset @s settings_menu_cancel
scoreboard players enable @s settings_menu_cancel
scoreboard players reset @s settings_menu_bind_spell
scoreboard players enable @s settings_menu_bind_spell
scoreboard players reset @s settings_menu_reset_player_data
scoreboard players enable @s settings_menu_reset_player_data

 dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "Spell Wheel Settings"\
  },\
  "can_close_with_escape": true,\
  "inputs": [\
    {\
      "type": "minecraft:number_range",\
      "key": "spell_number",\
      "label": {\
        "text": "Spell ID (00 blank, 01 lumos)"\
      },\
      "start": 0.0,\
      "end": 1.0,\
      "step": 1.0,\
      "initial": 1,\
      "width": 200\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "page_number",\
      "label": {\
        "text": "Page Number"\
      },\
      "start": 1.0,\
      "end": 7.0,\
      "step": 1.0,\
      "initial": 1,\
      "width": 120\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "slot_number",\
      "label": {\
        "text": "Slot Number"\
      },\
      "start": 1.0,\
      "end": 4.0,\
      "step": 1.0,\
      "initial": 1,\
      "width": 120\
    }\
  ],\
  "columns": 1,\
  "after_action": "close",\
  "actions": [\
    {\
      "label": {\
        "text": "Bind Spell"\
      },\
      "action": {\
        "type":"minecraft:dynamic/run_command", template:"/trigger settings_menu_bind_spell set 0$(page_number)0$(slot_number)0$(spell_number)" \
      }\
    },\
    {\
      "label": {\
        "text": "Cancel"\
      },\
      "action": {\
        "type":"minecraft:run_command", "command":"/trigger settings_menu_cancel set 1" \
      }\
    },\
    {\
      "label": {\
        "text": "Reset Player Data"\
      },\
      "action": {\
        "type":"minecraft:run_command", "command":"/trigger settings_menu_reset_player_data set 1" \
      }\
    }\
  ]\
}
