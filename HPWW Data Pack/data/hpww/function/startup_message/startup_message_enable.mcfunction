scoreboard players set #startup_message_player startup_message 1
tellraw @a {text:"Startup Message Enabled, reloading in 2 seconds..", color: "green"}
schedule function hpww:load 2s