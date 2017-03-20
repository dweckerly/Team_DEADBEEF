///check_for_object(object, distance)

/*
* @brief Checks for an object distance from the player
* @param Object to be checked
* @param distance to check
*/

var object = argument0;
var distance = argument1;

if(obj_player.x + distance >= object.x && obj_player.y + distance >= object.y
    && obj_player.x - distance <= object.x && obj_player.y - distance <= object.y){
    return true;
}

return false;
