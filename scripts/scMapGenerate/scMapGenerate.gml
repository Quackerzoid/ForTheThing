// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scMapGenerate(density,generations) {

	var grid = makeNoiseGrid(density)
	oMap.map = apply_cellular_automaton(grid,generations)
	show_debug_message(oMap.map)
	show_debug_message("BIG FAT WILLY")
	
}

function makeNoiseGrid(density) {
	var noise_grid = []
	
	for (var i = 0; i < oMap.wid; i++) {
		for (var j = 0; j < oMap.hei; j++) {
			var rand = irandom_range(1,100)
			if (rand < density) {
				noise_grid[i,j] = true	
			} else {
				noise_grid[i,j] = false	
			}
			
		}
	}
	return noise_grid
}

function apply_cellular_automaton(grid,count) {
	var positions = [[0,1],[0,-1],[1,0],[-1,0],[1,1],[1,-1],[-1,1],[-1,-1]]
	for (var i = 0; i < count; i++) {
		var temp_grid = grid
		for (var j = 0; j < oMap.hei;j++) {
			for (var k = 0; k < oMap.wid;k++) {
				var neighbour_wall_count = 0
				for (var pos = 0; pos < array_length(positions); pos ++) {
					if (j + positions[pos,0] >= 0 and j + positions[pos,0] < oMap.hei  and k + positions[pos,1] >= 0 and k + positions[pos,1] < oMap.wid) {
						if (temp_grid[j + positions[pos,0],k + positions[pos,1]] == false) {
							neighbour_wall_count++
						}
					} else {
						neighbour_wall_count++
					}
				}
				if (neighbour_wall_count > 4) {
					grid[j,k] = false
				} else {
					grid[j,k] = true
				}
			}
		}
	}
	return grid
}
	