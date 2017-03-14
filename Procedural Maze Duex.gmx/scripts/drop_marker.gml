///drop_marker

//destroy last marker if one exists
if(instance_exists(obj_marker)){
    with obj_marker {
        instance_destroy();
    }
}

//create marker at player's location
instance_create(obj_player.x, obj_player.y, obj_marker);
bulletin_text("Marker placed.");
