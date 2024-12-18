#==========================
# Run to setup scoreboard:
# /scoreboard objectives add doorTpsCount dummy
#==========================

#==========================
# Setup
#==========================

scoreboard players add @e[type=armor_stand,tag=Brick] doorTpsCount 1

#==========================
# Model Movement Variables
#==========================

execute as @e[tag=pz] at @s run tp @s ~ ~ ~-0.012 ~ ~
execute as @e[tag=nz] at @s run tp @s ~ ~ ~0.012 ~ ~
execute as @e[tag=px] at @s run tp @s ~-0.012 ~ ~ ~ ~
execute as @e[tag=nx] at @s run tp @s ~0.012 ~ ~ ~ ~
execute as @e[tag=py] at @s run tp @s ~ ~0.0093 ~ ~ ~
execute as @e[tag=ny] at @s run tp @s ~ ~-0.0093 ~ ~ ~
execute as @e[tag=cw] at @s run tp @s ~ ~ ~ ~4.5 ~
execute as @e[tag=ccw] at @s run tp @s ~ ~ ~ ~-4.5 ~

execute as @e[tag=snz] at @s run tp @s ~ ~ ~0.006 ~ ~

#==========================
# Fills
#==========================

execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 210 run fill 2848 59 798 2849 56 798 minecraft:air

#==========================
# General Brick Animation
#==========================

execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 5 run kill @e[tag=oldDiagonAlleyBrick,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]

execute as @e[type=armor_stand,tag=C00,tag=R01] if score @s doorTpsCount matches 70 positioned 2848 56 800 run playsound minecraft:custom.gameplay_element.diagon_alley.brick_wall_move master @a ~ ~ ~ 2
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 110 run tag @s add pz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 127 run tag @s remove pz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 127 run tag @s add px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 157 run tag @s remove px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 157 run tag @s add ny
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s remove ny
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s add ccw
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s add px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s remove px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s add nz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s remove nz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s add nx
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 220 run tag @s remove nx

execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 120 run tag @s add cw
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 120 run tag @s add nx
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 140 run tag @s remove cw
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 190 run tag @s remove nx
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 160 run tag @s add nz
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 171 run tag @s remove nz

execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 100 run tag @s add cw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 140 run tag @s remove cw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 120 run tag @s add py
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 145 run tag @s remove py
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 145 run tag @s add nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 150 run tag @s remove nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 160 run tag @s add nz
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 230 run tag @s remove nz
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 160 run tag @s add nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 167 run tag @s remove nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 155 run tag @s add ccw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 175 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 230 run tag @s add nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 250 run tag @s remove nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 250 run tag @s add ny
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 280 run tag @s remove ny


execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 80 run tag @s add ccw
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 80 run tag @s add px
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 100 run tag @s remove px
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 80 run tag @s add nz
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 81 run tag @s remove nz
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 100 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 100 run tag @s add nx
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 160 run tag @s remove nx

execute as @e[type=armor_stand,tag=C04,tag=!select] if score @s doorTpsCount matches 60 run tag @s add nz
execute as @e[type=armor_stand,tag=C04,tag=!select] if score @s doorTpsCount matches 80 run tag @s remove nz
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 90 run tag @s add nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 110 run tag @s remove nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 110 run tag @s add ccw
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 150 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 150 run tag @s add nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 190 run tag @s remove nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 110 run tag @s add nz
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 140 run tag @s remove nz

execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 80 run tag @s add ccw
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 80 run tag @s add nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 100 run tag @s remove nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 100 run tag @s add pz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 120 run tag @s remove pz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 120 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 130 run tag @s add px
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 160 run tag @s add nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 160 run tag @s remove px
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 182 run tag @s remove nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 180 run tag @s add px
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 220 run tag @s remove px



execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 80 run tag @s add pz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s remove pz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s add cw
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s add px
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s add nx
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 110 run tag @s remove px
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 120 run tag @s remove cw
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 120 run tag @s remove nx
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 150 run tag @s add nz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 180 run tag @s remove nz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 180 run tag @s add px
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 210 run tag @s remove px


execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 90 run tag @s add nx
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 90 run tag @s add cw
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 110 run tag @s remove cw
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 110 run tag @s remove nx
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 110 run tag @s add ny
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 130 run tag @s remove ny
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 140 run tag @s add px
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 170 run tag @s remove px
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 140 run tag @s add nz
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 141 run tag @s remove nz
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 141 run tag @s remove nz

# execute @e[type=armor_stand,tag=C07] @s run data merge entity @s {Glowing:1b}

execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 100 run tag @s add pz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 120 run tag @s remove pz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 120 run tag @s add nx
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 140 run tag @s remove nx
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 140 run tag @s add nz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 180 run tag @s remove nz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 160 run tag @s add cw
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 180 run tag @s remove cw


execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 100 run tag @s add nz
execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 120 run tag @s remove nz
execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 120 run tag @s add px
execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 150 run tag @s remove px



#==========================
# Special Brick Animation
#==========================

# Interaction Brick

execute as @e[type=armor_stand,tag=C04,tag=select,limit=1] if score @s doorTpsCount matches 20 run tag @s add snz

execute as @e[type=armor_stand,tag=C04,tag=select,limit=1] if score @s doorTpsCount matches 60 run tag @s remove snz

# Top 3 hole fillers

execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 100 run tag @s add nz
execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 100 run tag @s add ny

execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 120 run tag @s remove nz
execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 120 run tag @s remove ny



#==========================
# Kill off Armor Stands
#==========================

execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C00,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C01,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C02,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C03,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C04,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C05,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C06,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C07,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C08,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[tag=C09,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 120 run kill @e[tag=CX,type=armor_stand]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run scoreboard players set diagonAlleyAnimation global 0
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 330 run kill @e[name=AlleyPosition,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]

























