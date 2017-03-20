///debug_log(string);
/*
* @brief Allows the creation of a log file for debugging
* @param String to add in the file
*/


file_text_write_string(global.logfile, string(argument0));
file_text_writeln(global.logfile);
file_text_close(global.logfile);
file_text_open_append("Log_"+ string(current_month) + "-" + string(current_day) + "-" + string(current_year) + "_" + string(current_hour) + "-" + string(current_minute) + "-" + string(current_second) + '.txt');
show_debug_message(argument0);
