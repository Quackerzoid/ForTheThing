// Inherit the parent event
event_inherited();

interact = function(){
	if oCharacterSelection.str > 0{
	oCharacterSelection.str = oCharacterSelection.str - 1
	oCharacterSelection.points = oCharacterSelection.points + 1
	}
}
