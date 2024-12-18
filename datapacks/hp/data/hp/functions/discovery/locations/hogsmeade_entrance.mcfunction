# On Discover
execute as @s[tag=!discovered_hogsmeade_entrance,scores={playerID=1}] run bossbar set minecraft:player1empty name {"text":"Discovered","color":"white","italic":"true"}
execute as @s[tag=!discovered_hogsmeade_entrance,scores={playerID=2}] run bossbar set minecraft:player2empty name {"text":"Discovered","color":"white","italic":"true"}
execute as @s[tag=!discovered_hogsmeade_entrance,scores={playerID=3}] run bossbar set minecraft:player3empty name {"text":"Discovered","color":"white","italic":"true"}
execute as @s[tag=!discovered_hogsmeade_entrance,scores={playerID=4}] run bossbar set minecraft:player4empty name {"text":"Discovered","color":"white","italic":"true"}
execute at @s[tag=!discovered_hogsmeade_entrance] run playsound minecraft:custom.ui.discovery.discover_location master @s ~ ~ ~ 10 1 1
# Unlock location if it has not been discovered
execute as @s[tag=!discovered_hogsmeade_entrance] run scoreboard players set @s mapLocationID 50
execute as @s[tag=!discovered_hogsmeade_entrance] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_hogsmeade_entrance] discoverLocation 80
scoreboard players set @s[tag=discovered_hogsmeade_entrance] discoverLocation 50
execute as @s[tag=!discovered_hogsmeade_entrance] run tag @s add discovered_hogsmeade_entrance

# Title
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1discover name {"text":"Hogsmeade Entrance Gate","color":"white","italic":"false"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2discover name {"text":"Hogsmeade Entrance Gate","color":"white","italic":"false"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3discover name {"text":"Hogsmeade Entrance Gate","color":"white","italic":"false"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4discover name {"text":"Hogsmeade Entrance Gate","color":"white","italic":"false"}
function hp:misc/update_bossbars

# Set location
scoreboard players set @s lastRegion 4
scoreboard players set @s lastArea 0
scoreboard players set @s lastLocation 50