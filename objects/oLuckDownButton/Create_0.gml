// Inherit the parent event
event_inherited();

interact = function(){
	if oCharacterSelection.luck > 0{
	oCharacterSelection.luck = oCharacterSelection.luck - 1
	oCharacterSelection.points = oCharacterSelection.points + 1
	}
}
