# Armorstand rotation in Minecraft is really buggy, and the only way I could get the visual rotation to work right was to hardcode the rotation for increments like this

# Spawn
execute at @s positioned ^.1 ^ ^1.6 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0.0f,6.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon1"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
execute at @s positioned ^-.2 ^ ^-1.2 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[352.0f,10.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon2"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
execute at @s positioned ^-1.3 ^ ^-.4 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[20.0f,5.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon3"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
execute at @s positioned ^1.4 ^ ^-.1 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[305f,15.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon4"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
execute at @s positioned ^.7 ^ ^-.65 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[358.0f,4.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon5"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
execute at @s positioned ^-.5 ^ ^.45 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[315.0f,0.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon6"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
execute at @s positioned ^.6 ^ ^.45 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[322.0f,7.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon7"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
execute at @s positioned ^1.2 ^ ^1.3 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[340.0f,5.0f],Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","newPigeon","pigeon","pigeon8"],ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:99}}],Pose:{Body:[0.001f,0f,0f]}}
