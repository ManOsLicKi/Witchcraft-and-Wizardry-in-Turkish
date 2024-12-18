execute if score global Random matches 0..16 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Team:"Creature",Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:59}}],Silent:1b,Tags:["creature","deathEaterCreature","deathEaterCreatureIsBeingSummoned","undead"],HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:52}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],Health:40f,Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:3}]}
execute if score global Random matches 17..32 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Team:"Creature",Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:58}}],Silent:1b,Tags:["creature","deathEaterCreature","deathEaterCreatureIsBeingSummoned","undead"],HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:52}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],Health:40f,Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:3}]}
execute if score global Random matches 33..48 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Team:"Creature",Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:57}}],Silent:1b,Tags:["creature","deathEaterCreature","deathEaterCreatureIsBeingSummoned","undead"],HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:52}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],Health:40f,Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:3}]}
execute if score global Random matches 49..64 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Team:"Creature",Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:56}}],Silent:1b,Tags:["creature","deathEaterCreature","deathEaterCreatureIsBeingSummoned","undead"],HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:52}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],Health:40f,Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:3}]}
execute if score global Random matches 65..80 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Team:"Creature",Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:55}}],Silent:1b,Tags:["creature","deathEaterCreature","deathEaterCreatureIsBeingSummoned","undead"],HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:52}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],Health:40f,Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:3}]}
execute if score global Random matches 81..100 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Team:"Creature",Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:54}}],Silent:1b,Tags:["creature","deathEaterCreature","deathEaterCreatureIsBeingSummoned","undead"],HandItems:[{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:52}},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:53}}],Health:40f,Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:60},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:3}]}
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] run function hp:creatures/setup_health