///open_command(object)

/*
* @brief Triggered if the 'open' command is deciphered in an input string and acts accordingly
* @param Name of the object in the string
*/

var object = argument0;

switch(object){
    case("CHEST"):
        if(check_for_object(obj_chest, CELL_WIDTH)){
            bulletin_text("Looks like you can 'use' a combination.");
        } else {
            bulletin_text("Thoracotomy?");
        }
        break;
    case("DOOR"):
        if(check_for_object(obj_door, CELL_WIDTH)){
            if(global.door_unlocked){
                if(global.opened_chest){
                    bulletin_text("YOU WIN!!!");
                    
                    //update save
                    global.command = "3";
                    update_save(); 
                    
                     if(global.connect){
                        //update database
                        http_get("https://teamdeadbeef.000webhostapp.com/update.php?info=%20+" + string(global.command) + "&save_id=" + string(global.saveid));
                     } 
                } else {
                    bulletin_text("There's still a chest to open...");
                }
            } else {
                bulletin_text("Hrm, looks locked.");
            }
        } else {
            bulletin_text("With your mind? Get closer.");
        }
        break;
    default:
        break;
}
