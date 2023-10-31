// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stSprite() constructor {
	idle = sprKnightIdle
	run = sprKnightRun
}

function stSkeletonSprite() : stSprite() constructor {
	idle = sprSkeletonIdle
	run = sprSkeletonDeath
}

function stWizardSprite() : stSprite() constructor {
	idle = sprWizardIdle
	run = sprWizardDeath
}