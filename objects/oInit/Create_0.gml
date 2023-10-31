/// @description Insert description here
// You can write your code in this editor
room_goto(rOverworld)
instance_create_depth(0,0,0,oRuntime)
instance_create_depth(0,0,0,oMap)
scMapGenerate(oMap.density,oMap.generations)
oRuntime.currentScript = scOverworldMain

instance_create_depth(0,0,0,oCamera);
oCamera.currentScript = scCameraBattleIdle

window_set_fullscreen(true)
instance_destroy(id)
