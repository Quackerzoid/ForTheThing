// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//hi
function stCharacter() constructor {
	name = ""
	weapon = new stSword()
	sprite = new stSprite() 
	maxHp = 10
	hp = 10
	str = 5
	mag = 0
	def = 1
	res = 0
	spd = 2
	luck = 0
	inventory = []
	skills = [new stSkillDoubleEdgedAttack()]
	xp = 0
}

function stWizardTest() constructor {
	name = ""
	weapon = new stSword()
	sprite = new stWizardSprite() 
	maxHp = 10
	hp = 10
	str = 0
	mag = 10
	def = 1
	res = 0
	spd = 2
	luck = 0
	inventory = []
	skills = []
	xp = 0
}

function stSkeletonEnemy() : stCharacter() constructor {
	
	sprite = new stSkeletonSprite()
	str = 3
	spd = 1
	xp = 2
}