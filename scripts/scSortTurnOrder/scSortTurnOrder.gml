// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scSortTurnOrder(){
	sorted = false
	while not sorted {
		for (var i = 0; i < array_length(turnOrder);i++) {
			if i == array_length(turnOrder)-1 {
				sorted = true	
			}
			else if turnOrder[i].struct.spd < turnOrder[i+1].struct.spd {
					var temp = turnOrder[i]
					turnOrder[i] = turnOrder[i+1]
					turnOrder[i+1] = temp
			}
		}
		
	}
}