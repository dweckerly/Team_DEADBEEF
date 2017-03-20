///check_for_neighbor(grid, current x, current y, x direction, y direction)
/*
* @brief Checks the neighboring tiles for passable areas
* @param Grid to be checked
* @param Current x value
* @param Current y value
* @param x direction
* @param y direction
*/

var neighbor = false;

grid = argument0;
cx = argument1;
cy = argument2;
xdir = argument3;
ydir = argument4;

cx += xdir;
cy += ydir;

if((grid[# cx - 1, cy] == FLOOR && grid[# cx - 1, cy - 1] == FLOOR && grid[# cx, cy - 1] == FLOOR)
    || (grid[# cx - 1, cy] == FLOOR && grid[# cx - 1, cy + 1] == FLOOR && grid[# cx, cy + 1] == FLOOR)
    || (grid[# cx, cy + 1] == FLOOR && grid[# cx + 1, cy + 1] == FLOOR && grid[# cx + 1, cy] == FLOOR)
    || (grid[# cx + 1, cy] == FLOOR && grid[# cx + 1, cy - 1] == FLOOR && grid[# cx, cy - 1] == FLOOR)){
    neighbor = true;             
}

return neighbor;
