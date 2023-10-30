/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*2,image_yscale*2,0,c_white,image_alpha)
draw_healthbar(x-TILE,y+2,x+TILE,y+3,struct.hp/struct.maxHp * 100,c_black,c_red,c_green,0,true,false)