// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scTickTurnOrder(){
	turnOrder[array_length(turnOrder)] = turnOrder[0]
	array_delete(turnOrder,0,1)
}