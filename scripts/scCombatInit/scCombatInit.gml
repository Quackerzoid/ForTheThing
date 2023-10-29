// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatInit(){
	
	room_goto(rBattle)
	// PARTY SPAWNER
	turnOrder = []
	instance_create_depth(0,0,0,oCamera)
	oCamera.currentScript = scCameraBattleIdle
	for (var i = 0; i < array_length(party);i++) {
		var currentChar = instance_create_depth(-TILE*4-TILE*4*i,0,0,oCharacter)
		currentChar.struct = party[i]
		currentChar.sprite_index = currentChar.struct.sprite.idle
		currentChar.direction = 180
		partyActive[i] = currentChar
		turnOrder[i] = currentChar
	}
	
	// ENEMY SPAWNER
	var tOLength = array_length(turnOrder)
	var encounter = [0,new stCharacter(),new stCharacter()]
	for (var i = 0; i < array_length(encounter);i++) {
		var currentChar = instance_create_depth(TILE*4+TILE*4*i,0,0,oCharacter)
		currentChar.struct = new stSkeletonEnemy()
		currentChar.sprite_index = currentChar.struct.sprite.idle
		enemyActive[i] = currentChar
		turnOrder[i+tOLength] = currentChar
	}
	
	currentScript = scCombatPlayerTurnInit
	enemyTarget = 0
	
	scSortTurnOrder()
	
	
}