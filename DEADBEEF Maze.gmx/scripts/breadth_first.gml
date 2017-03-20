///breadth_first(starting object, ending object, grid)
//this script's purpose is to be used as a pathfinding
//algorithm for the enemy object to chase the player

var s_obj = argument0;
var e_obj = argument1;
var grid = argument2;

var path_found = false;

var sx = s_obj.x div CELL_WIDTH;
var sy = s_obj.y div CELL_HEIGHT;

var ex = e_obj.x div CELL_WIDTH;
var ey = e_obj.y div CELL_HEIGHT; 

var xx = sx;
var yy = sy;


