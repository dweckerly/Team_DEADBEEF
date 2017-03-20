///randomly_place_object_floor(grid, object, cell)
//call this script with the level's ds_grid, desired object to place,
//and FLOOR or WALL macro to designate which kind of cell it will 
//place the object on

/*
* @brief Randomly places an object on an area in the grid
* @param Grid to place the object on
* @param Object to be placed
* @param Cell type to place the object on
*/

var grid = argument0;
var object = argument1;

var found = false;
var xx;
var yy;


while(!found){
    xx = irandom_range(0, (room_width div CELL_WIDTH));
    yy = irandom_range(0, (room_height div CELL_HEIGHT));
    if(grid[# xx, yy] == argument2){
        instance_create((xx * CELL_WIDTH)+CELL_WIDTH/2, (yy * CELL_HEIGHT)+CELL_HEIGHT/2, object);
        found = true;
    }
}
