///input_decipher(txt)

/*
* @brief Deciphers user input
* @param Input to be deciphered
*/

//player's keyboard input
var txt = argument0

//setting a default distance for movement
var distance = 1;

//getting any numbers from the input
var digits = real(string_digits(txt));
if(digits > 1 && digits < 10){
    distance = digits;
}
//setting string to all upper case
var str = string_upper(txt);

//getting first half and second half of the input
var command = string_copy(str, 0, string_pos(" ", str) - 1);
var object = string_copy(str, string_pos(" ", str) + 1, string_length(str));

//check to make sure no spaces have been added
object = string_letters(object);

switch (command){
    case("GO"):
        move_command(object, distance);
        break;
    case("GRAB"):
        grab_command(object);
        break;
    case("OPEN"):
        open_command(object);
        break;
    case("USE"):
        use_command(object, digits)
        break;
    default:
        invalid_command();
        break;
}
