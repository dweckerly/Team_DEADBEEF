///bulletin_text("text to display")

/*
* @brief Sets the error text to display a message
* @param Text to be displayed
*/

var txt = argument0;

obj_input_player.txt = "";

obj_textbox.error_txt = txt;
obj_textbox.alarm[0] = room_speed * 2;
