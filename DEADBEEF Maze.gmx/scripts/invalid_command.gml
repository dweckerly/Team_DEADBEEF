///invalid_command()

/*
* @brief Sets the error text to display a message
*/

//all strings that can display when an invalid command is entered
//if more are added adjust the range of i variable below
var invalid_strings = array("Typo?", "That's not right...", 
                        "Is there some cheese on your #keyboard?",
                        "You should quit while you're #ahead...", 
                        "Are you even trying?",
                        "Try typing with your fingers.");

i = irandom_range(0, 5);

obj_textbox.error_txt = invalid_strings[i];
obj_textbox.alarm[0] = room_speed * 2;
