#declare objective settings_menu_cancel
#declare objective settings_menu_bind_spell
#declare objective settings_menu_reset_player_data
#declare objective settings_menu_button_cooldown
execute if score @s settings_menu_button_cooldown matches 1.. run return run advancement revoke @s only pack:blocks/main_wand/right_click_settings_button
scoreboard players reset @s settings_menu_cancel
scoreboard players enable @s settings_menu_cancel
scoreboard players reset @s settings_menu_bind_spell
scoreboard players enable @s settings_menu_bind_spell
scoreboard players reset @s settings_menu_reset_player_data
scoreboard players enable @s settings_menu_reset_player_data
gamerule send_command_feedback false

 dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "Spell Wheel Settings"\
  },\
  "can_close_with_escape": false,\
  "inputs": [\
    {\
      "type": "minecraft:number_range",\
      "key": "spell_number",\
      "label": {\
        "text": "Spell ID"\
      },\
      "start": 0.0,\
      "end": 2.0,\
      "step": 1.0,\
      "initial": 1,\
      "width": 100,\
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
        "text": "Reset Spell Wheel",\
      },\
      "action": {\
        "type":"minecraft:run_command", "command":"/trigger settings_menu_reset_player_data set 1" \
      },\
      "tooltip": {\
        "text": "Press to reset the players spell wheel, including all of its data. Useful if you encounter any bugs.."\
      }\
    },\
    {\
      "label": {\
        "text": "Exit"\
      },\
      "action": {\
        "type":"minecraft:run_command", "command":"/trigger settings_menu_cancel set 1" \
      }\
    },\
  ],\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "text": "Spell ID List\n",\
          "bold": true,\
          "color": "white"\
        },\
        {\
          "text": "0 = blank\n",\
          "color": "gray",\
          "bold": false\
        },\
        {\
          "text": "1 = lumos\n",\
          "color": "#ffea76",\
          "bold": false\
        },\
        {\
          "text": "2 = levioso",\
          "color": "#9fd6ff",\
          "bold": false\
        }\
      ],\
      "width": 220\
    }\
  ],\
}
