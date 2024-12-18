# Mana
scoreboard players remove @s manaAmount 1000
### Stupefy spell ###
execute as @s[tag=!usingStrengthPotion] at @s run summon snowball ^ ^ ^0.5 {damage:2d,Team:"NPC",NoGravity:1b,Color:-1,Tags:["spellEntity","stupefySpell","stupefy_ini"],Passengers:[{id:"minecraft:armor_stand",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["spellEntity","stupefyDirection","stupefyDirection_ini"]}]}
execute as @s[tag=usingStrengthPotion] at @s run summon snowball ^ ^ ^0.5 {damage:2d,Team:"NPC",NoGravity:1b,Color:-1,Tags:["spellEntity","stupefySpell","stupefy_ini","strengthAmplified"],Passengers:[{id:"minecraft:armor_stand",Team:"NPC",Invulnerable:1b,Small:1b,Invisible:1b,Marker:1b,Tags:["spellEntity","stupefyDirection","stupefyDirection_ini","strengthAmplified"]}]}
execute store result score @s tmp run data get entity @s Pos[0] 100
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] store result score @s movX run data get entity @s Pos[0] 100
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] run scoreboard players operation @s movX -= @p[tag=activePlayer] tmp

execute store result score @s tmp run data get entity @s Pos[1] 100
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] store result score @s movY run data get entity @s Pos[1] 100
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] run scoreboard players operation @s movY -= @p[tag=activePlayer] tmp

execute store result score @s tmp run data get entity @s Pos[2] 100
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] store result score @s movZ run data get entity @s Pos[2] 100
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] run scoreboard players operation @s movZ -= @p[tag=activePlayer] tmp

execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] run tp @s ~ ~1.5 ~

execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] store result entity @s Motion[0] double 0.02 run scoreboard players get @s movX
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] store result entity @s Motion[1] double 0.02 run scoreboard players get @s movY
execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] store result entity @s Motion[2] double 0.02 run scoreboard players get @s movZ

execute at @s store result entity @e[tag=stupefyDirection_ini,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute at @s store result entity @e[tag=stupefyDirection_ini,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]

execute at @s store result score @e[tag=stupefyDirection_ini,limit=1,sort=nearest] TargetXRot run data get entity @s Rotation[0]
execute at @s store result score @e[tag=stupefyDirection_ini,limit=1,sort=nearest] TargetYRot run data get entity @s Rotation[1]

execute at @s as @e[tag=stupefyDirection_ini,limit=1,sort=nearest] run scoreboard players operation @s playerID = @p[tag=activePlayer] playerID
execute at @s as @e[tag=stupefyDirection_ini,limit=1,sort=nearest] store result entity @s Owner[0] int 1 run data get entity @p[tag=activePlayer] UUID[0]
execute at @s as @e[tag=stupefyDirection_ini,limit=1,sort=nearest] store result entity @s Owner[1] int 1 run data get entity @p[tag=activePlayer] UUID[1]
execute at @s as @e[tag=stupefyDirection_ini,limit=1,sort=nearest] store result entity @s Owner[2] int 1 run data get entity @p[tag=activePlayer] UUID[2]
execute at @s as @e[tag=stupefyDirection_ini,limit=1,sort=nearest] store result entity @s Owner[3] int 1 run data get entity @p[tag=activePlayer] UUID[3]



execute at @s as @e[tag=stupefy_ini,limit=1,sort=nearest] run tag @s remove stupefy_ini
execute at @s as @e[tag=stupefyDirection_ini,limit=1,sort=nearest] run tag @s remove stupefyDirection_ini