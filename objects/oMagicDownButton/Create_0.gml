// Inherit the parent event
event_inherited();

interact = function(){
	if oCharacterSelection.mag > 0{
	oCharacterSelection.mag = oCharacterSelection.mag - 1
	oCharacterSelection.points = oCharacterSelection.points + 1
	}
}
