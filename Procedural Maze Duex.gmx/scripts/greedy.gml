///greedy(starting object, ending object, grid)

var s_obj= argument0;
var e_obj = argument1;
var grid = argument2;

var sx = s_obj.x div CELL_WIDTH;
var sy = s_obj.y div CELL_HEIGHT;

var ex = e_obj.x div CELL_WIDTH;
var ey = e_obj.y div CELL_HEIGHT;

var dx = sx - ex;
var dy = sy - ey;

var l_or_r;

if(dx > 0){

} else if(dx < 0){

}

if(dy > 0){

} else if(dy < 0){

}

if(dx > dy){
    if(grid[# sx + 1, sy] == FLOOR){
        
    }
}
