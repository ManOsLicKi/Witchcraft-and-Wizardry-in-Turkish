######################
# On damage to Enemy #
######################

# Set bossbarCreatureFocus per player
execute as @s[scores={playerID=1}] run tag @e[tag=bossBarCreatureFocus] remove bossBarCreatureFocus
execute as @s[scores={playerID=1}] run tag @e[limit=1,sort=nearest,tag=creature] add bossBarCreatureFocus
execute as @s[scores={playerID=1}] run scoreboard players set @p[scores={playerID=1}] creatureFocus 150

execute as @s[scores={playerID=2}] run tag @e[tag=disabledPlayer2bossBarCreatureFocus] remove disabledPlayer2bossBarCreatureFocus
execute as @s[scores={playerID=2}] run tag @e[limit=1,sort=nearest,tag=creature] add disabledPlayer2bossBarCreatureFocus
execute as @s[scores={playerID=2}] run scoreboard players set @p[scores={playerID=2}] creatureFocus 150

execute as @s[scores={playerID=3}] run tag @e[tag=disabledPlayer3bossBarCreatureFocus] remove disabledPlayer3bossBarCreatureFocus
execute as @s[scores={playerID=3}] run tag @e[limit=1,sort=nearest,tag=creature,nbt={HurtTime:10s}] add disabledPlayer3bossBarCreatureFocus
execute as @s[scores={playerID=3}] run scoreboard players set @p[scores={playerID=3}] creatureFocus 150

execute as @s[scores={playerID=4}] run tag @e[tag=disabledPlayer4bossBarCreatureFocus] remove disabledPlayer4bossBarCreatureFocus
execute as @s[scores={playerID=4}] run tag @e[limit=1,sort=nearest,tag=creature] add disabledPlayer4bossBarCreatureFocus
execute as @s[scores={playerID=4}] run scoreboard players set @p[scores={playerID=4}] creatureFocus 150

execute as @s[scores={playerID=1}] as @p[scores={playerID=1}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=2}] as @p[scores={playerID=2}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=3}] as @p[scores={playerID=3}] run tag @s add spellUpdateBossbar
execute as @s[scores={playerID=4}] as @p[scores={playerID=4}] run tag @s add spellUpdateBossbar

# Set damagedByID so the creature can detect who killed it with fairly high certainty
execute at @s run scoreboard players operation @e[tag=creature,distance=..3.5] damagedByID = @s playerID

execute as @s[tag=!strengthAmplified] as @e[tag=creature,tag=!undead,distance=..4] run effect give @s minecraft:instant_damage 1 1
execute as @s[tag=strengthAmplified] as @e[tag=creature,tag=!undead,distance=..4] run effect give @s minecraft:instant_damage 1 2
execute as @s[tag=!strengthAmplified] as @e[tag=creature,tag=undead,distance=..4] run effect give @s minecraft:instant_health 1 1
execute at @s[tag=strengthAmplified] as @e[tag=creature,tag=undead,distance=..4] run effect give @s minecraft:instant_health 1 2
execute as @e[tag=creature,tag=!undead,distance=..4] run effect give @s minecraft:poison 5 1
execute as @e[tag=creature,tag=undead,distance=..4] run effect give @s minecraft:regeneration 5 1