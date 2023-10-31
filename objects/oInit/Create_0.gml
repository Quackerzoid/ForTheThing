/// @description Insert description here
// You can write your code in this editor
room_goto(rOverworld)
instance_create_depth(0,0,0,oRuntime)
oRuntime.currentScript = scOverworldMain

window_set_fullscreen(true)
instance_destroy(id)
