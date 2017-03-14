///open_command(object)

var object = argument0;

switch(object){
    case("CHEST"):
        if(check_for_object(obj_chest, CELL_WIDTH)){
            bulletin_text("Looks like you can 'use' a#combination.");
        } else {
            bulletin_text("Thoracotomy?");
        }
        break;
    case("DOOR"):
        if(check_for_object(obj_door, CELL_WIDTH)){
            if(global.door_unlocked){
                if(global.opened_chest){
                    bulletin_text("YOU WIN!!!");
                } else {
                    bulletin_text("There's still a chest to#open...");
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
