// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatInit(){
	
	room_goto(rBattle)
	// PARTY SPAWNER
	for (var i = 0; i < array_length(party);i++) {
		var currentChar = instance_create_depth(-TILE*4-TILE*4*i,0,0,oCharacter)
		currentChar.struct = party[i]
		currentChar.sprite_index = currentChar.struct.sprite.idle
		currentChar.direction = 180
		partyActive[i] = currentChar
	}
	
	// ENEMY SPAWNER
	var encounter = [new stCharacter(),new stCharacter(),new stCharacter()]
	for (var i = 0; i < array_length(encounter);i++) {
		var currentChar = instance_create_depth(TILE*4+TILE*4*i,0,0,oCharacter)
		currentChar.struct = encounter[i]
		currentChar.sprite_index = currentChar.struct.sprite.idle
		enemyActive[i] = currentChar
	}
	
	currentScript = scCombatPlayerTurn
	instance_create_depth(0,0,0,oCamera)
	oCamera.currentScript = scCameraBattleIdle
}