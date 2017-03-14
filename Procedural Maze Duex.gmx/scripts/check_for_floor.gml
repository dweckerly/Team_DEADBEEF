///check_for_floor()


//set var at player's current position

var cx = (obj_player.x div CELL_WIDTH);
var cy = (obj_player.y div CELL_HEIGHT);

var offset = 31;


//check for floor in direction
if(obj_player.hspeed > 0){
    cx = ((obj_player.x - offset) div CELL_WIDTH);
    if(obj_lvl.grid[# cx + 1, cy] != FLOOR){
        obj_player.hspeed = 0;
        wall_error();   
    }
} else if(obj_player.hspeed < 0){
    cx = ((obj_player.x + offset) div CELL_WIDTH);
    if(obj_lvl.grid[# cx - 1, cy] != FLOOR){
        obj_player.hspeed = 0;  
        wall_error(); 
    }
} else if(obj_player.vspeed > 0){
    cy = ((obj_player.y - offset) div CELL_HEIGHT);
    if(obj_lvl.grid[# cx, cy + 1] != FLOOR){
        obj_player.vspeed = 0;   
        wall_error();
    }
} else if(obj_player.vspeed < 0){
    cy = ((obj_player.y + offset) div CELL_HEIGHT);
    if(obj_lvl.grid[# cx, cy - 1] != FLOOR){
        obj_player.vspeed = 0;
        wall_error(); 
    }
}


