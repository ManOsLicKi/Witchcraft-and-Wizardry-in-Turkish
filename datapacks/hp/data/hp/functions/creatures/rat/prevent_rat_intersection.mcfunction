# executed at original rat's position so sorting by nearest entity will return that.
execute if score @s creatureID < @e[sort=nearest,limit=1,tag=ratCreature] creatureID run tag @e[sort=nearest,limit=1,tag=ratCreature] add slowDown