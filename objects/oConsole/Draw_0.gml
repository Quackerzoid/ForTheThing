/// @description Insert description here
// You can write your code in this editor
draw_set_font(consoleFont)
consoleHeight = 20
consoleTop = 0
consoleLeft = 0
consoleBottom = consoleTop + consoleHeight
consoleRight = 500
if global.consoleEnable == true{

draw_set_alpha(0.8)
draw_rectangle_colour(consoleLeft,consoleTop,consoleRight,consoleBottom,c_grey,c_grey,c_grey,c_grey,false)

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_alpha(0.9)

draw_text(consoleLeft,consoleTop,"> " + consoleText)

}