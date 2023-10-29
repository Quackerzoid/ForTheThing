// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatInit(){
	// PARTY SPAWNER
	for (var i = 0; i < array_length(oRuntime.party);i++) {
		var currentChar = instance_create_depth(0,0,0,oCharacter)
		currentChar.struct = party[i]
	}
	
	
}