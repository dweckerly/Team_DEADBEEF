///move_command(direction, distance)

/*
* @brief Triggered if the 'move' command is deciphered in an input string and acts accordingly
* @param Direction to travel
* @param Distance to travel
*/

var dir = argument0;
var distance = argument1;

var spd = 2;
var dist = room_speed * distance;

if(global.fast){
    dist = dist/2;
}
if(global.slow){
    dist = dist * 2;
}

if(distance > 9 || distance < 1){
    invalid_command();
} else {
    switch(dir){
        case("LEFT"):
        case("WEST"):
            global.moving = true;
            obj_player.hspeed = -spd;
            obj_player.alarm[0] = dist;
            break;
        case("RIGHT"):
        case("EAST"):
            global.moving = true;
            obj_player.hspeed = spd;
            obj_player.alarm[0] = dist;
            break;
        case("BACK"):
        case("UP"):
        case("NORTH"):
            global.moving = true; 
            obj_player.vspeed = -spd;
            obj_player.alarm[0] = dist;
            break;
        case("FORWARD"):
        case("DOWN"):
        case("SOUTH"):
            global.moving = true;
            obj_player.vspeed = spd;
            obj_player.alarm[0] = dist;
            break;
        default:
            invalid_command();
            break;
    }
}
