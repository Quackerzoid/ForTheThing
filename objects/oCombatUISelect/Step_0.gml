/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < array_length(boxes);i++) {
	boxes[i].x = lerp(boxes[i].x,boxes[i].xTo,0.2)
	y = lerp(y,yTo,0.2)
}
show_debug_message("hi")