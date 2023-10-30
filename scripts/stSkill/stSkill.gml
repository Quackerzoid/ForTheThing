// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stSkill() constructor{
	name = ""
	type = 0 //type is just if its magic or not 0 for str 1 for mag
	target = 0 //0 for single, 1 for spread, 2 for all (this is just for the target selection)
	scroll = undefined // the scroll script that will also take effect after the regular script
	script = undefined // the script that will run when u decide to use
}

function stSkillDoubleEdgedAttack() : stSkill() constructor {
	name = "Double Edged Attack"
	script = scSkillDoubleEdgedAttack
	
}