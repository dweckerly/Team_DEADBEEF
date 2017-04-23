///update_save()

savef = file_text_open_append("save/save" + '.tdb');
file_text_write_string(savef, global.command + " ");
file_text_close(savef);
