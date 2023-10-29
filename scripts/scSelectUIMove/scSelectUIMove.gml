// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scSelectUIMove(dir){
	if !((oCombatUISelect.boxes[0].selected and dir == 1) or (oCombatUISelect.boxes[array_length(oCombatUISelect.boxes)-1].selected and dir == -1)) {
		//if it can move
		//move it
		foundSelected = false
		for (var i = 0; i < array_length(oCombatUISelect.boxes);i++) {
			oCombatUISelect.boxes[i].pos += dir
			oCombatUISelect.boxes[i].xTo = camera_get_view_width(oCamera.RoomCamera)/2 + TILE * oCombatUISelect.boxes[i].pos * cameraviewportscale
			if not foundSelected {
				//switch selected
				if oCombatUISelect.boxes[i].selected {
				 	foundSelected = true
					oCombatUISelect.boxes[i].selected = false
					oCombatUISelect.boxes[i-dir].selected = true
				}
			}
		}

	}
}