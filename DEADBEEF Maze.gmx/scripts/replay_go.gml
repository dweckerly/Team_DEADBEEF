///replay_go(command, digits)


var com = argument0;
var distance = argument1;

if(distance > 9 || distance < 1){
    invalid_command();
} else {
    switch(com){
        case("FORWARD"):
            break;
        case("BACK"):
            break;
        case("FASTER"):
            if(!global.slow && !global.fast){
                global.fast = true;
                room_speed = 64;
            }
            if(global.slow){
                global.slow = false;
                room_speed = 32;
            }
            break;
        case("SLOWER"):
            if(!global.slow && !global.fast){
                global.slow = true;
                room_speed = 16;
            }
            if(global.fast){
                global.fast = false;
                room_speed = 32
            }
            break;
        default:
            invalid_command();
            break;
    }
}
