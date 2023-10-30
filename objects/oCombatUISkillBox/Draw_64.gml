/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < array_length(boxes);i++) {
	draw_sprite_ext(sprite_index,boxes[i].selected,x*cameraviewportscale,boxes[i].y*cameraviewportscale+1,image_xscale,image_yscale,0,c_white,image_alpha)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_transformed(x*cameraviewportscale+TILE*cameraviewportscale*3,boxes[i].y*cameraviewportscale+TILE*5+1,boxes[i].skill.name,1.5,1.5,0)
}