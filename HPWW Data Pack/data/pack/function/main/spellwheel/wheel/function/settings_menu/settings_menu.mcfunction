#declare objective settings_menu_cancel
scoreboard players reset @s settings_menu_cancel
scoreboard players enable @s settings_menu_cancel

 dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "Spell Wheel Settings"\
  },\
  "can_close_with_escape": true,\
  "inputs": [\
    {\
      "type": "minecraft:text",\
      "key": "spell_name",\
      "label": {\
        "text": "Spell Wheel Name (Lowercase)"\
      },\
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
        "type":"minecraft:dynamic/run_command", template:"/function pack:main/spells/function/spell_wheel/add_spell {Spell:$(spell_name), Page:$(page_number), Slot:$(slot_number),}" \
      }\
    },\
    {\
      "label": {\
        "text": "Cancel"\
      },\
      "action": {\
        "type":"minecraft:run_command", "command":"/trigger settings_menu_cancel set 1" \
      }\
    }\
  ]\
}
