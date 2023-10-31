/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < array_length(map); i++) {
	for (var j = 0; j < array_length(map); j++) {
		if map[i,j] {
			draw_sprite(sTile,0,i*TILE,j*TILE)
		} else {
			draw_sprite(sEmptyTile,0,i*TILE,j*TILE)
		}
	}
}


draw_text(0,0,"THIS IS THE DENSITY "+string(density))
draw_text(0,20,"THIS IS THE GENERATIONS "+string(generations))