///jump_to(starting object, ending object, grid)

/*
* @brief Jump To pathfinding algorithm to make enemy move towards player
* @param Starting object (enemy)
* @param Ending object (player)
* @param Grid to search over
*/

var s_obj = argument0;
var e_obj = argument1;
var grid = argument2;

var sx = s_obj.x div CELL_WIDTH;
var sy = s_obj.y div CELL_HEIGHT;

var xdist = abs(s_obj.x - e_obj.x);
var ydist = abs(s_obj.y - e_obj.y);
var jx = floor(xdist/2);
var jy = floor(ydist/2);

var dir_priority = 0;

if(xdist > ydist){
    //check to the left
    if(s_obj.x > e_obj.x){
        if(grid[# sx - 1, sy] == FLOOR){
            if(grid[# sx - jx, sy] == FLOOR){            
                dir_priority = 1;
            }
        }
    //check to the right
    } else if(s_obj.x < e_obj.x){
        if(grid[# sx + 1, sy] == FLOOR){
            if(grid[# sx + jx, sy] == FLOOR){            
                dir_priority = 2;
            }   
        }
    }
} else if(ydist > xdist){
    //check above
    if(s_obj.y > e_obj.y){
        if(grid[# sx, sy - 1] == FLOOR){
            if(grid[# sx, sy - jy] == FLOOR){            
                dir_priority = 3;
            }
        }
    //check below
    } else if(s_obj.y < e_obj.y){
        if(grid[# sx, sy + 1] == FLOOR){
            if(grid[# sx, sy + jy] == FLOOR){            
                dir_priority = 4;
            }  
        }
    }
}

return dir_priority;
