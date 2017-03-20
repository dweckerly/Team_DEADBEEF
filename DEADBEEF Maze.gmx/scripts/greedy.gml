///greedy(starting object, ending object, grid)
//purose of this script is to utilize a greedy
//pathfinding algorithm to have an enemy chase
//the player


/*
* @brief Greedy pathfinding algorithm to make enemy move towards player
* @param Starting object (enemy)
* @param Ending object (player)
* @param Grid to search over
*/



var s_obj= argument0;
var e_obj = argument1;
var grid = argument2;

//get starting object x and y as grid accessor
var sx = (s_obj.x-32) div CELL_WIDTH;
var sy = (s_obj.y-32) div CELL_HEIGHT;

//get ending object x and y as grid accessor
var ex = (e_obj.x-32) div CELL_WIDTH;
var ey = (e_obj.y-32) div CELL_HEIGHT;

//get difference between the two
var dx = sx - ex;
var dy = sy - ey;

//var for left or right, defaults at -1 if object are on the same horizontal plane
var l_or_r = -1;
//var for up or down, defaults at -1 if object are on the same vertical plane
var u_or_d = -1;

//sets direction priority: 1 - left, 2 - right, 3 - up, 4 - down
//defaults at 0 if x and y distances are the same
var dir_priority = 0;

//var to determine whether or not a valid move is found
var found_move = false;


if(dx > 0){
    //try to go left (1)
    l_or_r = 1;    
} else if(dx < 0){
    //try to go right (0)
   l_or_r = 0; 
} else if(dx == 0){

}

if(dy > 0){
    //try to go up (1)
    u_or_d = 1;
} else if(dy < 0){
    //try to go down (0)
    u_or_d = 0;
}

//check to see if there is a greater distance in x or y direction 
//to set direction priority for move
if(abs(dx) > abs(dy)){
    if(l_or_r == 1){
        dir_priority = 1;
    } else if(l_or_r == 0){
        dir_priority = 2;
    }
} else if(abs(dy) > abs(dx)){
    if(u_or_d == 1){
        dir_priority = 3;
    } else if(u_or_d == 0){
        dir_priority = 4;
    }
}

while(!found_move){
    switch(dir_priority){
        case(1):
            if(grid[# sx - 1, sy] == FLOOR){
                found_move = true;
            } else {
                if((u_or_d == 1) && (grid[# sx, sy - 1] == FLOOR)){
                    dir_priority = 3;
                    found_move = true;
                } else if((grid[# sx, sy + 1] == FLOOR)){
                    dir_priority = 4;
                    found_move = true;
                } else if(grid[# sx + 1, sy] == FLOOR){
                    dir_priority = 2;
                    found_move = true;
                } else {
                    dir_priority = 0;
                }
            }
            break;
        case(2):
            if(grid[# sx + 1, sy] == FLOOR){
                found_move = true;
            } else {
                if((u_or_d == 1) && (grid[# sx, sy - 1] == FLOOR)){
                    dir_priority = 3;
                    found_move = true;
                } else if((grid[# sx, sy + 1] == FLOOR)){
                    dir_priority = 4;
                    found_move = true;
                } else if(grid[# sx - 1, sy] == FLOOR){
                    dir_priority = 1;
                    found_move = true;
                } else {
                    dir_priority = 0;
                }      
            }
            break;
        case(3):
            if(grid[# sx, sy - 1] == FLOOR){
                found_move = true;
            } else {
                if((l_or_r == 1) && (grid[# sx - 1, sy] == FLOOR)){
                    dir_priority = 1;
                    found_move = true;
                } else if(grid[# sx + 1, sy] == FLOOR){
                    dir_priority = 2;
                    found_move = true;
                } else if (grid[# sx, sy + 1] == FLOOR){
                    dir_priority = 4;
                    found_move = true;
                } else {
                    dir_priority = 0;
                }
            }
            break;
        case(4):
            if(grid[# sx, sy + 1] == FLOOR){
                found_move = true;
            } else {
                if((l_or_r == 1) && (grid[# sx - 1, sy] == FLOOR)){
                    dir_priority = 1;
                    found_move = true;
                } else if((grid[# sx + 1, sy] == FLOOR)){
                    dir_priority = 2;
                    found_move = true;
                } else if (grid[# sx, sy - 1] == FLOOR){
                    dir_priority = 3;
                    found_move = true;
                } else {
                    dir_priority = 0;
                }
            }
            break;
        default:
            //added fail-safe incase of no conditions being met
            dir_priority = irandom_range(1, 4);
            break;
    }
}

return dir_priority;
