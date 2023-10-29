// Inherit the parent event
event_inherited();

interact = function(){
	if oCharacterSelection.res > 0{
	oCharacterSelection.res = oCharacterSelection.res - 1
	oCharacterSelection.points = oCharacterSelection.points + 1
	}
}
