///object_place_meeting(x, y)

var xx = argument0;
var yy = argument1;

if(place_meeting(xx, yy, obj_key) || place_meeting(xx, yy, obj_chest)
    || place_meeting(xx, yy, obj_door) || place_meeting(xx, yy, obj_numbers)){
    return true;    
} else {
    return false;
}
