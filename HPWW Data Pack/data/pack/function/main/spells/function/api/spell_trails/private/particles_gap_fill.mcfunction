# Fill the one-block segment behind the trail head using local coordinates.
execute positioned ^ ^ ^0.50 run function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color.particle_colors
execute positioned ^ ^ ^0.00 run function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color.particle_colors
execute positioned ^ ^ ^-0.50 run function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color.particle_colors
execute positioned ^ ^ ^0.75 run function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color.particle_colors
execute positioned ^ ^ ^-0.75 run function pack:main/spells/function/api/spell_trails/private/particles with storage pack:trail_storage out.trail_color.particle_colors
