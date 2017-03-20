///grid_place_meeting(x, y);

var xx = argument0;
var yy = argument1;

//place holder for current position
var xp = x;
var yp = y;

//update positon for bbox calculations
x = xx;
y = yy;

//check for x meeting
var x_meeting = (obj_lvl.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) || 
                (obj_lvl.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);

//check for y meeting
var y_meeting = (obj_lvl.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) ||
                (obj_lvl.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

var center_meeting = obj_lvl.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR; 
                
//move back
x = xp;
y = yp;

//return true or false
return x_meeting || y_meeting || center_meeting;
