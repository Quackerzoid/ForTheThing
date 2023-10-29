/// @description Insert description here
// You can write your code in this editor
draw_set_font(consoleFont)
if global.consoleEnable == true{
	
	if consoleWritable == true{
	consoleText = keyboard_string
	}

if keyboard_check_pressed(vk_enter){
	consoleWritable = true
	consoleCommand = consoleText
	consoleText = ""
	keyboard_string = ""
	savedCommand = consoleCommand
	
	commandParsing(consoleCommand)
	
}

if keyboard_check_pressed(vk_up){
	consoleWritable = false
	keyboard_string = ""
	consoleText = savedCommand
}




}