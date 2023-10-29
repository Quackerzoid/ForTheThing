// Inherit the parent event
event_inherited();

interact = function(){
	if oCharacterSelection.def > 0{
	oCharacterSelection.def = oCharacterSelection.def - 1
	oCharacterSelection.points = oCharacterSelection.points + 1
	}
}
