/// @description Insert description here
// You can write your code in this editor
show_debug_message("Console F1 Button Pressed")

if global.consoleEnable = true{
	global.consoleEnable = false
}
else {
	if global.consoleEnable = false{
		global.consoleEnable = true
		keyboard_string = ""
	}
}
