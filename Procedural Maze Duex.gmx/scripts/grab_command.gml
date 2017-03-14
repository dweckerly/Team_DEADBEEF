///grab_command(object)

var object = argument0;

switch(object){
    case("KEY"):
        if(instance_exists(obj_key)){
            if(check_for_object(obj_key, CELL_WIDTH)){
                //set key global and draw to gui
                global.has_key = true;
                obj_textbox.error_txt = "You got a key!";
                obj_textbox.alarm[0] = room_speed * 2;
            } else {
                obj_textbox.error_txt = "Error!";
                obj_textbox.alarm[0] = room_speed * 2;
            }
        }
        break;
    default:
        invalid_command();
        break;
}

