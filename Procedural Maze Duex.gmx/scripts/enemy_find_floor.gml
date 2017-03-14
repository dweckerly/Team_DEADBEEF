///check_for_floor(object)

var object = argument0;

//set var at object's current position

var cx = (object.x div CELL_WIDTH);
var cy = (object.y div CELL_HEIGHT);

var offset = 31;


//check for floor in direction
if(object.hspeed > 0){
    cx = ((object.x - offset) div CELL_WIDTH);
    if(obj_lvl.grid[# cx + 1, cy] != FLOOR){
        object.hspeed = 0;
        return false;
    }
} else if(object.hspeed < 0){
    cx = ((object.x + offset) div CELL_WIDTH);
    if(obj_lvl.grid[# cx - 1, cy] != FLOOR){
        object.hspeed = 0;  
        return false;
    }
} else if(object.vspeed > 0){
    cy = ((object.y - offset) div CELL_HEIGHT);
    if(obj_lvl.grid[# cx, cy + 1] != FLOOR){
        object.vspeed = 0;   
        return false;
    }
} else if(object.vspeed < 0){
    cy = ((object.y + offset) div CELL_HEIGHT);
    if(obj_lvl.grid[# cx, cy - 1] != FLOOR){
        object.vspeed = 0;
        return false; 
    }
}

return true;
