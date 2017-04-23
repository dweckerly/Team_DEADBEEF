///input_decipher(txt)

/*
* @brief Deciphers user input
* @param Input to be deciphered
*/

//player's keyboard input
var txt = argument0

//getting any numbers from the input
var distance = string_digits(txt);
if(distance == ""){
    distance = 1;
} else {
    distance = real(distance);
}

while(string_char_at(txt, 1) == " "){
    txt = string_copy(txt, 2, string_length(txt) - 1);
}

//setting string to all upper case
var str = string_upper(txt);

//getting first half and second half of the input
var command = string_copy(str, 0, string_pos(" ", str) - 1);
var object = string_copy(str, string_pos(" ", str) + 1, string_length(str));

//check to make sure no spaces have been added
command = string_letters(command);
object = string_letters(object);

switch (command){
    case("GO"):
        //move_command(object, distance);
        replay_go(object, distance);
        break;
    case("USE"):
        
        break;
    default:
        invalid_command();
        break;
}
