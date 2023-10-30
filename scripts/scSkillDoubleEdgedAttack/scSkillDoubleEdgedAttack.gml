// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scSkillDoubleEdgedAttack(){
	switch skillStep {
		case 0:
		//select target
			scSkillSelectTargetSingleInit()
			skillStep+=1
			
		case 1:
			scSkillSelectTargetSingle()
			
		break;
		
		case 2:
		//animation
			currentStep +=1
			skillStep +=1
		break;
		
		case 3:
		//attack
			var damageDealt = scDamageCalculate(turnOrder[0],enemyActive[enemyTarget])*1.5
			var recoil = floor(damageDealt/10*3)
			scDamageTake(enemyActive[enemyTarget],damageDealt)
			scDamageTake(turnOrder[0],recoil)
			currentStep+=1
			skillStep = 4
		break;
		
	}
}