///randomly_place_object_wall(grid, object)

var grid = argument0;
var object = argument1;

var found_wall = false;
var xx;
var yy;


while(!found_floor){
    xx = irandom_range(0, (room_width div CELL_WIDTH));
    yy = irandom_range(0, (room_height div CELL_HEIGHT));
    if(grid[# xx, yy] == WALL){
        instance_create(xx * CELL_WIDTH, yy * CELL_HEIGHT, object);
        found_floor = true;
    }
}
