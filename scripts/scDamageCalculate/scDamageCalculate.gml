// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scDamageCalculate(attacker,attacked){
	if attacker.struct.weapon.type == 0 {
		return ((attacker.struct.weapon.atk + attacker.struct.str) - attacked.struct.def)
	} else {
		return ((attacker.struct.weapon.atk + attacker.struct.mag) - attacked.struct.res)
	}
}