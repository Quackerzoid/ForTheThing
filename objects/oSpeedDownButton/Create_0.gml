// Inherit the parent event
event_inherited();

interact = function(){
	if oCharacterSelection.spd > 0{
	oCharacterSelection.spd = oCharacterSelection.spd - 1
	oCharacterSelection.points = oCharacterSelection.points + 1
	}
}
