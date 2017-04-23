///drop_marker()

/*
* @brief Triggered if the 'use' command is deciphered in an input string followed by the marker object
*/

//destroy last marker if one exists
if(instance_exists(obj_marker)){
    with obj_marker {
        instance_destroy();
    }
}

//create marker at player's location
instance_create(obj_player.x, obj_player.y, obj_marker);
bulletin_text("Marker placed.");

//update the save file
global.command = "6";
update_save();

if(global.connect){
    //update database
    http_get("https://teamdeadbeef.000webhostapp.com/update.php?info=%20+" + string(global.command) + "&save_id=" + string(global.saveid));
} 
