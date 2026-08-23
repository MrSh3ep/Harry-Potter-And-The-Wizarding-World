# Global spell definitions used by the spell wheel and cooldown API.
# To add a cooldown spell: add its definition here, then add one line in tick/registry.mcfunction and icons/force_refresh_all_icons.mcfunction. and at the bottom of tick/player.mcfunction add a 'unless data storage pdb:main in.cooldowns.urspellname' and in tick/probe. `display_name` controls the Field Guide interaction name.

#Blank
data modify storage hpww:gobal_spell_data blank set value {Spell:"blank",display_name:"Blank",icon_font:"custom_glyphs",Current_Key:"E101",Keys:{Active:"E101",Selected:"E101",Cooldown:{D_1:"E101",D_2:"E101",D_3:"E101",D_4:"E101",D_5:"E101",D_6:"E101",D_7:"E101",D_8:"E101",D_9:"E101",D_10:"E101",D_11:"E101",D_12:"E101",D_13:"E101",D_14:"E101",D_15:"E101",D_16:"E101",D_17:"E101",D_18:"E101",D_19:"E101",D_20:"E101",D_21:"E101",D_22:"E101",D_23:"E101",D_24:"E101",D_25:"E101",D_26:"E101"}}}

#Lumos
data modify storage hpww:gobal_spell_data lumos set value {Spell:"lumos",display_name:"Lumos",icon_font:"lumos",Current_Key:"A100",Keys:{Active:"A100",Selected:"B100",Cooldown:{D_1:"C101",D_2:"C102",D_3:"C103",D_4:"C104",D_5:"C105",D_6:"C106",D_7:"C107",D_8:"C108",D_9:"C109",D_10:"C110",D_11:"C111",D_12:"C112",D_13:"C113",D_14:"C114",D_15:"C115",D_16:"C116",D_17:"C117",D_18:"C118",D_19:"C119",D_20:"C120",D_21:"C121",D_22:"C122",D_23:"C123",D_24:"C124",D_25:"C125",D_26:"C126"}}}

#Levioso
data modify storage hpww:gobal_spell_data levioso set value {Spell:"levioso",display_name:"Levioso",icon_font:"levioso",Current_Key:"A100",Keys:{Active:"A100",Selected:"B100",Cooldown:{D_1:"C101",D_2:"C102",D_3:"C103",D_4:"C104",D_5:"C105",D_6:"C106",D_7:"C107",D_8:"C108",D_9:"C109",D_10:"C110",D_11:"C111",D_12:"C112",D_13:"C113",D_14:"C114",D_15:"C115",D_16:"C116",D_17:"C117",D_18:"C118",D_19:"C119",D_20:"C120",D_21:"C121",D_22:"C122",D_23:"C123",D_24:"C124",D_25:"C125",D_26:"C126"}}}

#Depulso
data modify storage hpww:gobal_spell_data depulso set value {Spell:"depulso",display_name:"Depulso",icon_font:"depulso",Current_Key:"A100",Keys:{Active:"A100",Selected:"B100",Cooldown:{D_1:"C101",D_2:"C102",D_3:"C103",D_4:"C104",D_5:"C105",D_6:"C106",D_7:"C107",D_8:"C108",D_9:"C109",D_10:"C110",D_11:"C111",D_12:"C112",D_13:"C113",D_14:"C114",D_15:"C115",D_16:"C116",D_17:"C117",D_18:"C118",D_19:"C119",D_20:"C120",D_21:"C121",D_22:"C122",D_23:"C123",D_24:"C124",D_25:"C125",D_26:"C126"}}}

#Expelliarmus
data modify storage hpww:gobal_spell_data expelliarmus set value {Spell:"expelliarmus",display_name:"Expelliarmus",icon_font:"expelliarmus",Current_Key:"A100",Keys:{Active:"A100",Selected:"B100",Cooldown:{D_1:"C101",D_2:"C102",D_3:"C103",D_4:"C104",D_5:"C105",D_6:"C106",D_7:"C107",D_8:"C108",D_9:"C109",D_10:"C110",D_11:"C111",D_12:"C112",D_13:"C113",D_14:"C114",D_15:"C115",D_16:"C116",D_17:"C117",D_18:"C118",D_19:"C119",D_20:"C120",D_21:"C121",D_22:"C122",D_23:"C123",D_24:"C124",D_25:"C125",D_26:"C126"}}}

#Protego
data modify storage hpww:gobal_spell_data protego set value {Spell:"protego",display_name:"Protego",icon_font:"custom_glyphs",Current_Key:"E014",Keys:{Active:"E014",Selected:"E014",Cooldown:{D_1:"E015",D_2:"E015",D_3:"E015",D_4:"E015",D_5:"E015",D_6:"E015",D_7:"E015",D_8:"E015",D_9:"E015",D_10:"E015",D_11:"E015",D_12:"E015",D_13:"E015",D_14:"E015",D_15:"E015",D_16:"E015",D_17:"E015",D_18:"E015",D_19:"E015",D_20:"E015",D_21:"E015",D_22:"E015",D_23:"E015",D_24:"E015",D_25:"E015",D_26:"E015"}}}

data modify storage hpww:gobal_spell_data cooldown_registry set value ["lumos","levioso","protego", "depulso", "expelliarmus"]
