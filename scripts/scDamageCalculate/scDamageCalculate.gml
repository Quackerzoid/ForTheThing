// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scDamageCalculate(attacker,attacked){
	return ((attacker.struct.weapon.atk + attacker.struct.str) - attacked.struct.def)
}