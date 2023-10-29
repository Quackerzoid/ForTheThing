// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatPlayerTurnInit(){
	var UI = instance_create_depth(0,0,0,oCombatUISelect)
	UI.boxes = [new stUIBox(),new stUIBox()]
	for (var i = 0; i < array_length(UI.boxes);i++) {
		UI.boxes[i].x = camera_get_view_width(oCamera.RoomCamera)/2 + (TILE*2+1)*i
		UI.boxes[i].xTo = UI.boxes[i].x
	}
	UI.boxes[0].selected = 1
	UI.boxes[0].name = "Attack"
	UI.boxes[1].name = "Block"
	
	currentScript = scCombatPlayerTurn
}