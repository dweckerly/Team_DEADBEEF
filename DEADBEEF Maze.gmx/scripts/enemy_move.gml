///enemy_move(object, direction priority)

/*
* @brief Moves object given the object and a direction to move
* @param Object to move
* @param Direction to move
*/

//object being manipulated by script
var object = argument0;
//the direction to move as determined in algorithm
var dir = argument1;

//speed of move
var spd = 2;

//move in determined direction
switch(dir){
    case(1):
        object.hspeed = -spd;
        break;
    case(2):
        object.hspeed = spd;
        break;
    case(3):
        object.vspeed = -spd;
        break;
    case(4):
        object.vspeed = spd;
        break;
    default:
        enemy_move(obj_smart_enemy, greedy(obj_smart_enemy, obj_player, obj_lvl.grid));
        break;
}
