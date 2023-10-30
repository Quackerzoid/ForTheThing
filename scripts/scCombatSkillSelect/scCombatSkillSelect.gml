// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatSkillSelect(){
	if keyboard_check_pressed(DOWNKEY) {
		scSkillUIMove(1) //move ui down
	}
	else if keyboard_check_pressed(UPKEY) {
		scSkillUIMove(-1) //move ui up
	}
	else if keyboard_check_pressed(AKEY) {
		for (var i = 0; i < array_length(oCombatUISkillBox.boxes);i++) {
			if oCombatUISkillBox.boxes[i].pos == 0 {
				
				currentSkill = oCombatUISkillBox.boxes[i].skill
				currentScript = scSkillUseInit
				instance_destroy(oCombatUISkillBox)
				break
			}
		}//SELECT TARGET
	}
	else if keyboard_check_pressed(BKEY) { 
		currentScript = scCombatPlayerTurnInit
		instance_destroy(oCombatUISkillBox)
	}
}