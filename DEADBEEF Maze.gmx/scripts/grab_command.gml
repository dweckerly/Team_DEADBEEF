///grab_command(object)

/*
* @brief Triggered if the 'grab' command is deciphered in an input string and acts accordingly
* @param Name of the object in the string
*/

var object = argument0;

switch(object){
    case("KEY"):
        if(instance_exists(obj_key)){
            if(check_for_object(obj_key, CELL_WIDTH)){
                //set key global and draw to gui
                global.has_key = true;
                 bulletin_text("You got a key!");
                obj_textbox.alarm[0] = room_speed * 2;
                
                //update save file
                global.command = "2";
                update_save(); 
                
                if(global.connect){
                    //update database
                    http_get("https://teamdeadbeef.000webhostapp.com/update.php?info=%20+" + string(global.command) + "&save_id=" + string(global.saveid));
                } 
            } else {
                bulletin_text("Error!");
                obj_textbox.alarm[0] = room_speed * 2;
            }
        }
        break;
    default:
        invalid_command();
        break;
}
