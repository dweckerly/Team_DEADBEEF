///aStar(starting object, ending object, grid)
//purpose of this script is to utilize the A*
//pathfinding algorithm to have an enemy chase 
//the player.

/*
* @brief A* pathfinding algorithm to make enemy move towards player
* @param Starting object (enemy)
* @param Ending object (player)
* @param Grid to search over
*/

//initializations similar to greedy
var s_obj= argument0;
var e_obj = argument1;
var grid = argument2;

//set width and height of grid
width = 22;
height = 16;

//get starting object x and y as grid accessor
var sx = s_obj.x div CELL_WIDTH;
var sy = s_obj.y div CELL_HEIGHT;

//get ending object x and y as grid accessor
var ex = e_obj.x div CELL_WIDTH;
var ey = e_obj.y div CELL_HEIGHT;

//sets direction priority: 1 - left, 2 - right, 3 - up, 4 - down
//defaults at 0 if x and y distances are the same
var dir_priority = 0;

//iterate through the gird and give each cell a value based
//upon proximity and accessability to the player
for(var i = 0; i < width; i++){
    for(var j = 0; j < height; j++){
        if(grid[# i, j] == FLOOR){
            var dx = ex - i;
            var dy = ey - j;
            gar[i, j] = sqrt(((dx*dx)+(dy*dy)));                
        } else {
            gar[i, j] = 10000;
        }
    }
}


//add value based on accessability
/*
for(var i = 0; i < width; i++){
    a_value = 4;
    for(var j = 0; j < height; j++){
        if(grid[#i + 1, j] == FLOOR){
            a_value--;
        }
        if(grid[#i - 1, j] == FLOOR){
            a_value--;
        }
        if(grid[#i, j + 1] == FLOOR){
            a_value--
        }
        if(grid[#i, j - 1] == FLOOR){
            a_value--;
        }        
        gar[i, j] += a_value;
    }
}
*/


//check each direction value and assign direction priority
if((gar[sx - 1, sy] < gar[sx + 1, sy]) && (gar[sx - 1, sy] < gar[sx, sy + 1])
    && (gar[sx - 1, sy] < gar[sx, sy - 1])){
    dir_priority = 1;        
}

if((gar[sx + 1, sy] < gar[sx - 1, sy]) && (gar[sx + 1, sy] < gar[sx, sy + 1])
    && (gar[sx + 1, sy] < gar[sx, sy - 1])){
    dir_priority = 2;
}

if((gar[sx, sy - 1] < gar[sx - 1, sy]) && (gar[sx, sy - 1] < gar[sx, sy + 1])
    && (gar[sx, sy - 1] < gar[sx + 1, sy])){
    dir_priority = 3;
}

if((gar[sx, sy + 1] < gar[sx - 1, sy]) && (gar[sx, sy + 1] < gar[sx, sy - 1])
    && (gar[sx, sy + 1] < gar[sx + 1, sy])){
    dir_priority = 4;
}

return dir_priority;
