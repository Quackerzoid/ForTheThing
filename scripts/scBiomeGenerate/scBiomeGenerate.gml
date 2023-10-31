// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scBiomeGenerate(){
	oMap.plainsBiome = []
	for (var i = 0; i < array_length(oMap.map); i++) {
		for (var j = 0; j < array_length(oMap.map); j++) {
			if oMap.map[i,j] {
				oMap.plainsBiome[array_length(oMap.plainsBiome)] = [i,j]
			}
}