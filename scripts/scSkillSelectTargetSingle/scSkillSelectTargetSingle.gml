// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scSkillSelectTargetSingle(){
	if keyboard_check_pressed(LEFTKEY) {
		if enemyTarget > 0 {
			enemyTarget -=1
			oCamera.followTarget = enemyActive[enemyTarget]
		} //move camera left
	}
	else if keyboard_check_pressed(RIGHTKEY) {
		if enemyTarget < array_length(enemyActive) - 1 {
			enemyTarget +=1
			oCamera.followTarget = enemyActive[enemyTarget]
		} //move camera right
	}
	else if keyboard_check_pressed(AKEY) {
		skillStep+=1
		//ATTACK NOW!
	}
	
	else if keyboard_check_pressed(BKEY) {
		currentScript = scCombatSkillSelectInit
	}
}