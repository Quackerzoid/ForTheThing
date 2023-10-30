// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatSkillSelectInit(){
	if array_length(turnOrder[0].struct.skills) == 0 {
		currentScript = scCombatPlayerTurnInit
	} else {
		var UI = instance_create_depth(0,0,0,oCombatUISkillBox)
		for (var i = 0; i < array_length(turnOrder[0].struct.skills); i++) {
			UI.boxes[i] = new stUISkillBox()
			UI.boxes[i].y = -(TILE+1)*(array_length(turnOrder[0].struct.skills)-i)*cameraviewportscale
			UI.boxes[i].yTo = (TILE+1)*i*cameraviewportscale
			UI.boxes[i].pos = i
			UI.boxes[i].skill = turnOrder[0].struct.skills[i]
		
		}
		UI.boxes[0].selected = 1
		currentScript = scCombatSkillSelect
		oCamera.currentScript = scCameraFollowTarget
		enemyTarget = 0
		oCamera.followTarget = enemyActive[enemyTarget]
	}
}