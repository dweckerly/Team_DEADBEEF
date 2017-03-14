///use_command(object, digits)

var object = argument0;
var digits = string(argument1);

var combination;

if(object != ""){
    switch(object){
        case("KEY"):
            if(global.has_key){
                if(check_for_object(obj_door, CELL_WIDTH)){
                    global.door_unlocked = true
                    bulletin_text("Door is unlocked.");
                } else {
                    bulletin_text("You must be near the door...");
                }
            } else {
                bulletin_text("You must have a key to use it...");
            }
            break;
        case("MARKER"):
            drop_marker();
            break;
        default:
            bulletin_text("Huh?");
            break;
    }
} else {
    if(check_for_object(obj_chest, CELL_WIDTH)){
        if(digits == string_digits(obj_chest.combo)){
            bulletin_text("It opened!");
            obj_chest.image_index = 1;
            global.opened_chest = true;
        } else {
            bulletin_text("Wrong combination.");
        }
    } else {
        bulletin_text("You must be near the chest#to use the combination.");
    }
}

