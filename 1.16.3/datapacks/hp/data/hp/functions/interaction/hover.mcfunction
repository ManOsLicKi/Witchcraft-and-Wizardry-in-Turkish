# Splitting hover up into 3 functions like this allows me to insert the hover commands per quest and make some things interactable only if you have a certain quest. It was done sort of late, so it's a quite janky implementation.

# Slow punching looks cooler and feels less minecraft. Haste prevents punching at all.
execute as @s[tag=preventPunching,tag=play] run effect give @s minecraft:haste 10 5 true
execute as @s[tag=preventPunching,tag=play] run effect clear @s minecraft:mining_fatigue
execute as @s[tag=!preventPunching,tag=play] run effect give @s minecraft:mining_fatigue 10 5 true
execute as @s[tag=!preventPunching,tag=play] run effect clear @s minecraft:haste

##############
### Select ###
##############
scoreboard players set @s tmp 0
execute store result score @s tmp run tag @e[type=!item_frame,tag=questHover,limit=1] add hover
execute at @s[tag=!hoverLocked] positioned ^ ^-.25 ^1 run tag @e[type=!item_frame,distance=..2,limit=1,sort=nearest,tag=interactable] add potentialHover

# Hacky way to prevent Diagon Alley and potion stands, etc. until it is unlocked
execute as @s[tag=diagonAlleyNotUnlocked] run tag @e[tag=potentialHover,limit=1,tag=diagonAlleyBrick] remove potentialHover
execute as @s[tag=potionStandLocked] run tag @e[tag=potentialHover,limit=1,tag=brewer] remove potentialHover
execute as @s[tag=earmuffsLocked] run tag @e[tag=potentialHover,limit=1,tag=earmuffs] remove potentialHover
execute as @s[tag=pensiveLocked] run tag @e[tag=potentialHover,limit=1,tag=pensive] remove potentialHover



# Edit
execute at @s[tag=!play] positioned ^ ^-.25 ^1 run tag @e[type=!item_frame,distance=..2,limit=1,sort=nearest,tag=interactable] add potentialHover
execute at @s[tag=!play] positioned ^ ^-.25 ^1 run tag @e[type=!item_frame,distance=..2,limit=1,sort=nearest,tag=editInteractable] add potentialHover

execute at @s[tag=!inConversation,tag=!inInventory,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=!inMap,tag=!inBrewer,tag=!inPensive,tag=!inWingardium,tag=!inAppiration,tag=!inLetter,tag=!inQuestBook,tag=!inProperCutScene,tag=!inResetPoint] unless entity @e[type=!item_frame,tag=hover,limit=1] positioned ^ ^-.25 ^1 run tag @e[type=!item_frame,distance=..2,limit=1,sort=nearest,tag=potentialHover] add hover

# Ray trace to see if there is something blocking the selection. if score @s tmp matches 0 is to stop it from testing if testing has already been done in the questhover
execute if score @s tmp matches 0 as @e[type=!item_frame,tag=hover,limit=1,tag=!doNotCheckHover] at @s run function hp:interaction/hover_block_check_launch

# Cleanup
tag @e[type=!item_frame,tag=potentialHover] remove potentialHover
# tag @e[type=!item_frame,tag=questHover] remove questHover

############
### Edit ###
############
execute as @s[tag=!play] run function hp:interaction/hover_edit


##############
### Titles ###
##############
# If tmp is not 0 tests are skipped, and each succesful test overrides it
# If hover actionbar is done in the quest tmp is set to 1 from the start
scoreboard players set @s[tag=!questActionbarTitle] tmp 0
scoreboard players set @s[tag=questActionbarTitle] tmp 1
tag @s[tag=questActionbarTitle] remove questActionbarTitle

execute if entity @s[tag=!inConversation,tag=!inBrewer,tag=!inPensive,tag=!inLetter,tag=!inWingardium,tag=!inAppiration,tag=!inMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=!inProperCutScene,tag=!inResetPoint,tag=!waitingToReliveMemory,tag=play] as @e[tag=hover,limit=1] run function hp:interaction/hover_actionbar

# Title "Spell uses:"
# Lumos
execute if entity @s[scores={pickUpTimer=0},tag=inLumosArea,tag=!showSpellSelection,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=!flyingBroom,tag=!inLumos,tag=!inInventory,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!inTravelPoint,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"! ","bold":true,"color":"aqua"},{"text":"You can create light with the charm 'Lumos'"},{"text":" !","bold":true,"color":"aqua"}]

# Drowning
execute if entity @s[scores={pickUpTimer=0},tag=!showSpellSelection,tag=isDrowning,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=!flyingBroom,tag=!inLumos,tag=!inInventory,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"! ","bold":true,"color":"blue"},{"text":"You can breathe underwater with the 'Essence of Gillyweed' potion"},{"text":" !","bold":true,"color":"blue"}]

# Alohomora
execute if entity @s[scores={pickUpTimer=0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=play] if entity @e[tag=hover,tag=interactable,tag=alohomora_lock,limit=1] store success score @s tmp run title @s actionbar  ["",{"text":"!","bold":true,"color":"gold"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"Can be unlocked with the charm 'Alohomora'"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"!","bold":true,"color":"gold"}]
execute if entity @s[scores={pickUpTimer=0},tag=castAlohomora] if entity @e[tag=doorOpened] store success score @s tmp run title @s actionbar ["",{"text":"! ","bold":true,"color":"gold"},{"text":"Unlocking..."},{"text":" !","bold":true,"color":"gold"}]

# Vera Verto
execute if entity @s[scores={pickUpTimer=0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=play] if entity @e[tag=hover,tag=interactable,tag=veraVerto,limit=1] store success score @s tmp run title @s actionbar  ["",{"text":"!","bold":true,"color":"blue"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"Can be transfigured with 'Vera Verto'"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"!","bold":true,"color":"blue"}]

# Wingardium
execute if entity @s[scores={pickUpTimer=0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!invisCape,tag=!stunnedByMandrake,tag=!earmuffs,tag=play] if entity @e[tag=hover,tag=interactable,tag=wingardium,limit=1] store success score @s tmp run title @s actionbar  ["",{"text":"!","bold":true,"color":"dark_purple"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"Can be lifted with the charm 'Wingardium Leviosa'"},{"text":" ","bold":true,"color":"dark_gray"},{"text":"!","bold":true,"color":"dark_purple"}]
execute if entity @s[scores={pickUpTimer=0},tag=inWingardium,tag=hoveringOnWingardiumBox,tag=!isLiftingWingardiumBox,tag=!hoveringOnWingardiumBoxInSwitch,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"Press ","color":"dark_purple"},{"text":"⌡","bold":false,"color":"white"},{"text":" to lift","color":"dark_purple"}]
execute if entity @s[scores={pickUpTimer=0},tag=inWingardium,tag=hoveringOnWingardiumBox,tag=isLiftingWingardiumBox,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"Press ","color":"dark_purple"},{"text":"⌡","bold":false,"color":"white"},{"text":" to drop","color":"dark_purple"}]
execute if entity @s[scores={pickUpTimer=0},tag=inWingardium,tag=hoveringOnWingardiumBox,tag=!isLiftingWingardiumBox,tag=hoveringOnWingardiumBoxInSwitch,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"Press ","color":"dark_purple"},{"text":"⌡","bold":false,"color":"white"},{"text":" to lift from switch","color":"dark_purple"}]
execute if entity @s[scores={pickUpTimer=0},tag=inWingardium,tag=isLiftingWingardiumBox,tag=hoveringWingardiumBoxOverSwitch,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"Press ","color":"dark_purple"},{"text":"⌡","bold":false,"color":"white"},{"text":" to place in switch","color":"dark_purple"}]

# Bombarda
execute if entity @s[scores={pickUpTimer=0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!invisCape,tag=!stunnedByMandrake,tag=!earmuffs,tag=play] if entity @e[tag=hover,tag=interactable,tag=bombarda_blockade,tag=!explodedBlockade,limit=1] store success score @s tmp run title @s actionbar  ["",{"text":"!","bold":true,"color":"gold"},{"text":" ","bold":true,"color":"gold"},{"text":"Can be destroyed with the charm 'Bombarda Maxima'"},{"text":" ","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"gold"}]

# Apparate
execute if entity @s[scores={pickUpTimer=0},tag=inAppiration,tag=cantApparateHere] store success score @s tmp run title @s actionbar ["",{"text":"Can't apparate here","color":"red"}]

# Invisibility cape
execute if entity @s[scores={pickUpTimer=0,invisCapeAnim=..0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=invisCape,tag=play,tag=!usingInvisibilityPotion] store success score @s tmp run title @s actionbar ["",{"text":"You are invisible. You can take off your invisibility cloak by pressing '"},{"keybind":"key.sneak"},"'."]
execute if entity @s[scores={pickUpTimer=0,invisCapeAnim=..0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=invisCape,tag=play,tag=usingInvisibilityPotion] store success score @s tmp run title @s actionbar ["",{"text":"You are invisible. The effect will wear off shortly."}]

# You are wearing earmuffs
execute if entity @s[scores={pickUpTimer=0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=earmuffs,tag=!isHoveringOnMandrake,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"You are wearing earmuffs. You can take them off by pressing 'shift'."}]

# Replant mandrake
execute if entity @s[scores={pickUpTimer=0},tag=!inWingardium,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!castAlohomora,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=earmuffs,tag=isHoveringOnMandrake,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"Press ","color":"gold"},{"text":"⌡","color":"white"},{"text":" to replant mandrake. ","color":"gold"}]
tag @s remove isHoveringOnMandrake

# Pickup (Placed here because the title overrides the hover titles below)
execute as @s[scores={pickUpTimer=1..}] run function hp:inventory/pick_up

# Leaving playable area
execute if entity @s[scores={pickUpTimer=0},tag=leavingPlayableArea,tag=!showSpellSelection,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=!flyingBroom,tag=!inLumos,tag=!inInventory,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!inTravelPoint,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"Turn back! You've wandered too far","color":"red"}]
execute if entity @s[scores={pickUpTimer=0},tag=leavingPlayableArea,tag=!showSpellSelection,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=flyingBroom,tag=!inLumos,tag=!inInventory,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!inTravelPoint,tag=play] store success score @s tmp run title @s actionbar ["",{"text":"Turn back! You've flown too far","color":"red"}]


# Waiting for everyone to interact with the pensive
execute if entity @s[scores={pickUpTimer=0},tag=waitingToReliveMemory,tag=!showSpellSelection,tag=!invisCape,tag=!omnioculars,tag=!stunnedByMandrake,tag=!earmuffs,tag=!flyingBroom,tag=!inLumos,tag=!inInventory,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=!inTravelPoint,tag=play] run function hp:pensive/waiting_to_relive_memory

# At end to prevent flicker
title @s[tag=!showSpellSelection,tag=!adjustGUI,tag=!inProperCutScene,tag=!inResetPoint,tag=!cutsceneOverrideActionbar,tag=play,scores={tmp=0}] actionbar ["",{"text":""}]