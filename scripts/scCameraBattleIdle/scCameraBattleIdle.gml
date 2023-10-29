// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCameraBattleIdle(){
	x = lerp(x,0,0.2)
	y = lerp(y,0,0.2)

	//x = clamp(x, ViewWidth/2, room_width - ViewWidth/2);
	//y = clamp(y, ViewHeight/2, room_height - ViewHeight/2);

	ViewWidth = lerp(ViewWidth,DefaultViewWidth,0.2);
	ViewHeight = lerp(ViewHeight,DefaultViewHeight,0.2);
	
	camera_set_view_pos(RoomCamera,x-ViewWidth/2, y-ViewHeight/2);		
	camera_set_view_size(RoomCamera,ViewWidth,ViewHeight);
}