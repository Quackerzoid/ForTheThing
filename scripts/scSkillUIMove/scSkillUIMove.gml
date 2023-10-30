// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scSkillUIMove(dir){
	if !((oCombatUISkillBox.boxes[0].selected and dir == 1) or (oCombatUISkillBox.boxes[array_length(oCombatUISkillBox.boxes)-1].selected and dir == -1)) {
		//if it can move
		//move it
		foundSelected = false
		for (var i = 0; i < array_length(oCombatUISkillBox.boxes);i++) {
			oCombatUISkillBox.boxes[i].pos += dir
			oCombatUISkillBox.boxes[i].yTo = (TILE+1) * oCombatUISkillBox.boxes[i].pos * cameraviewportscale
			if not foundSelected {
				//switch selected
				if oCombatUISkillBox.boxes[i].selected {
				 	foundSelected = true
					oCombatUISkillBox.boxes[i].selected = false
					oCombatUISkillBox.boxes[i-dir].selected = true
				}
			}
		}

	}
}