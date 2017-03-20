//wall_error()

/*
* @brief Sets the error text to display a message
*/

//all strings that can display when an invalid command is entered
//if more are added adjust the range of i variable below
var invalid_strings = array("Ouch.", "Are you blind?", 
                        "That's a wall...", 
                        "Haven't gotten the hang of this#yet, have you?", 
                        "Doh!", "No, no. Keep trying.#That wall WILL move.");

i = irandom_range(0, 5);

obj_textbox.error_txt = invalid_strings[i];
obj_textbox.alarm[0] = room_speed * 2;
