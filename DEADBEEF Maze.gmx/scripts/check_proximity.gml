///check_proximity(start object, end object, steps)

/*
* @brief Checks the proximity of two objects 
* @param Starting object 
* @param Ending object
* @param Amount of steps to check
*/

var s_obj = argument0;
var e_obj = argument1;
var steps = argument2;

//get start object x and y and convert to grid accessor
var sx = s_obj.x div CELL_WIDTH;
var sy = s_obj.y div CELL_HEIGHT;

//get end object x and y and convernt to grid accessor
var ex = e_obj.x div CELL_WIDTH;
var ey = e_obj.y div CELL_HEIGHT;

//checks if end object is within steps of start object
//start with quardrant I
if(((((sx + steps) >= ex) && (ex >= sx)) && 
    (((sy + steps) >= ey) && (ey >= sy)))
    //quadrant II
    || ((((sx - steps) <= ex) && (ex <= sx)) &&
    (((sy + steps) >= ey) && (ey >= sy)))
    //quadrant III
    || ((((sx - steps) <= ex) && (ex <= sx)) &&
    (((sy - steps) <= ey) && (ey <= sy)))
    //quadrant VI
    || ((((sx + steps) >= ex) && (ex >= sx)) &&
    (((sy - steps) <= ey) && (ey <= sy)))
    ){
    
    //if it is destroy the object
    with e_obj {
        instance_destroy();
    }
    
    return true;
}

return false;
