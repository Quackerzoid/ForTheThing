// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function commandParsing(commandString){

parsedCommandString = []

parsedCommandString = string_split(" ",commandString,true)



if array_length(parsedCommandString) > 1{
	
	scriptName = asset_get_index(parsedCommandString[0])
	
script_execute_ext(scriptName,parsedCommandString,1,array_length(parsedCommandString))

}

else
{
	var scrpt
	scrpt = asset_get_index(oConsole.consoleCommand)
	if string(scrpt) != "-1"{
	script_execute(scrpt)
	}
}


}