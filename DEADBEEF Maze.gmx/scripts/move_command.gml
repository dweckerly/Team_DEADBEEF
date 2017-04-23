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

if(distance > 9 || distance < 1){
    invalid_command();
} else {
    switch(dir){
        case("LEFT"):
        case("WEST"):
            global.moving = true;
            obj_player.hspeed = -spd;
            obj_player.alarm[0] = dist;
            
            //update save
            global.command = "11" + string(distance);
            update_save();
            
            if(global.connect){
                //update database
                http_get("https://teamdeadbeef.000webhostapp.com/update.php?info=%20+" + string(global.command) + "&save_id=" + string(global.saveid));
                show_debug_message(global.saveid);
            } 
            break;
        case("RIGHT"):
        case("EAST"):
            global.moving = true;
            obj_player.hspeed = spd;
            obj_player.alarm[0] = dist;
            
            //update save
            global.command = "12" + string(distance);
            update_save(); 
            
            if(global.connect){
                //update database
                http_get("https://teamdeadbeef.000webhostapp.com/update.php?info=%20+" + string(global.command) + "&save_id=" + string(global.saveid));
                show_debug_message(global.saveid);
            } 
            break;
        case("BACK"):
        case("UP"):
        case("NORTH"):
            global.moving = true; 
            obj_player.vspeed = -spd;
            obj_player.alarm[0] = dist;
            
            //update save
            global.command = "13" + string(distance);
            update_save(); 
            
            if(global.connect){
                //update database
                http_get("https://teamdeadbeef.000webhostapp.com/update.php?info=%20+" + string(global.command) + "&save_id=" + string(global.saveid));
                show_debug_message(global.saveid);
            } 
            break;
        case("FORWARD"):
        case("DOWN"):
        case("SOUTH"):
            global.moving = true;
            obj_player.vspeed = spd;
            obj_player.alarm[0] = dist;
            
            //update save
            global.command = "14" + string(distance);
            update_save(); 
            
            if(global.connect){
                //update database
                http_get("https://teamdeadbeef.000webhostapp.com/update.php?info=%20+" + string(global.command) + "&save_id=" + string(global.saveid));
                show_debug_message(global.saveid);
            } 
            break;
        default:
            invalid_command();
            break;
    }
}
