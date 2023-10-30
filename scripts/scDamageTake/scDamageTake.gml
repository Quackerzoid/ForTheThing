// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scDamageTake(attacked,damageDealt){
	attacked.struct.hp -= damageDealt
	if attacked.struct.hp <= 0 {
		scDeath(attacked)
	}
}