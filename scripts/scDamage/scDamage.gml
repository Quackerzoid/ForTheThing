// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scDamage(attacker,attacked){
	damageDealt = (attacker.struct.weapon.atk + attacker.struct.str) - attacked.struct.def
	attacked.struct.hp -= damageDealt
	if attacked.struct.hp <= 0 {
		scDeath(attacked)
	}
}