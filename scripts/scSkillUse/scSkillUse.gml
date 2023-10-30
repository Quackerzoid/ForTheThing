// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scSkillUse(){
	switch currentStep {
		case 0:
			//animation
			
			script_execute(currentSkill.script)
		break;
		
		case 1:
			//deal damage
			script_execute(currentSkill.script)
		break;
		
		case 2:
			scNextTurn()
		break;
	}
}