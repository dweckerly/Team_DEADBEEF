///move_command(direction, distance)

var dir = argument0;
var distance = argument1;

switch(dir){
    case("LEFT"):
        global.moving = true;
        obj_player.hspeed = -2;
        obj_player.alarm[0] = room_speed * distance;
        break;
    case("RIGHT"):
        global.moving = true;
        obj_player.hspeed = 2;
        obj_player.alarm[0] = room_speed * distance;
        break;
    case("UP"):
        global.moving = true; 
        obj_player.vspeed = -2;
        obj_player.alarm[0] = room_speed * distance;
        break;
    case("DOWN"):
        global.moving = true;
        obj_player.vspeed = 2;
        obj_player.alarm[0] = room_speed * distance;
        break;
    default:
        invalid_command();
        break;
}
