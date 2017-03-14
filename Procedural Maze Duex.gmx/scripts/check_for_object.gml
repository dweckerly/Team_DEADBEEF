///check_for_object(object, distance)

var object = argument0;
var distance = argument1;

if(obj_player.x + distance >= object.x && obj_player.y + distance >= object.y
    && obj_player.x - distance <= object.x && obj_player.y - distance <= object.y){
    return true;
}

return false;
