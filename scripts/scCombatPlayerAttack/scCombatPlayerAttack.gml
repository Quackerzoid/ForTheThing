// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatPlayerAttack(){
	
	switch currentStep {
		case 0:
			//animation then when animation is done
			currentStep = 1
		break;
		
		case 1:
			//damage and enemy takes hit
			scDamage(turnOrder[0],enemyActive[enemyTarget])
			
			currentStep = 2
		break;
		
		case 2: 
			scNextTurn()
		break;
	}
	
}