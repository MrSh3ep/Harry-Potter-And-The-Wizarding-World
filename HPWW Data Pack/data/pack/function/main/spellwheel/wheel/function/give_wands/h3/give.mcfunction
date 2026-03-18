
$loot give @s loot \
{ \
  pools: [ \
    { \
      rolls: 1, \
      entries: [ \
        { \
          type: "minecraft:item", \
          name: "minecraft:test_instance_block", \
          weight: 1, \
          functions: [ \
            { \
              function: "minecraft:set_components", \
              components: $(components) \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}
function pack:main/spellwheel/wheel/function/save_preset