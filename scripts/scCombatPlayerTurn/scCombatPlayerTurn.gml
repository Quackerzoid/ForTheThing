// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatPlayerTurn(){
	if keyboard_check_pressed(LEFTKEY) {
		scSelectUIMove(1) //move ui left
	}
	else if keyboard_check_pressed(RIGHTKEY) {
		scSelectUIMove(-1) //move ui right
	}
	else if keyboard_check_pressed(AKEY) {
		for (var i = 0; i < array_length(oCombatUISelect.boxes);i++) {
			if oCombatUISelect.boxes[i].selected {
				
				currentScript = oCombatUISelect.boxes[i].script
				instance_destroy(oCombatUISelect)
				break
			}
		}//SELECT TARGET
	}
}