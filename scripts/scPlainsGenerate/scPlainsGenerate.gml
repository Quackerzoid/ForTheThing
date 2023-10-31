// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scPlainsGenerate(){
	directionimg = [sPlainsLeft,sPlainsBottom,sPlainsRight,sPlainsTop,sPlainsBottomLeft,sPlainsBottomRight,sPlainsTopLeft,sPlainsTopRight,sPlainsBottomLeftC,sPlainsBottomRightC,sPlainsTopLeftC,sPlainsTopRightC]
	scGenerateEdges(directionimg,oMap.plainsBiome)
}