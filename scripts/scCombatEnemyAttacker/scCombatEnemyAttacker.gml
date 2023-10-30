// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCombatEnemyAttacker(){
	switch currentStep {
		
	case 0:
		scDamage(turnOrder[0],partyActive[irandom_range(0,array_length(partyActive)-1)])
		currentStep = 1
	break;
	
	case 1:
		scNextTurn()
	break;
	}
}