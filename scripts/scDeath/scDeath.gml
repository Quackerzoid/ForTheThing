// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scDeath(dead){
	found = false
	for (var i = 0; i < array_length(partyActive); i++) {
		if partyActive[i] == dead {
			array_delete(partyActive,i,1)
			instance_destroy(dead)
			found = true
		}
	}
	if not found {
		for (var i = 0; i < array_length(enemyActive); i++) {
			if enemyActive[i] == dead {
				array_delete(enemyActive,i,1)
				instance_destroy(dead)
			}
		}
	}
	oCamera.currentScript = scCameraBattleIdle
	array_delete(turnOrder,array_get_index(turnOrder,dead),1)
	enemyTarget = 0
	
}