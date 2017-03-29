// decrypt (input_file, output_file) 
fileid = file_bin_open (argument0,0) 
fileido = file_bin_open (argument1,1)
 
file_bin_rewrite (fileido) 
if (file_bin_size (fileid) mod 2 != 0) 
{ 
    ba = file_bin_read_byte (fileid) 
    file_bin_write_byte (fileido , ~ ba) 
} 
do { 
    ba = file_bin_read_byte (fileid) 
    bb = file_bin_read_byte (fileid) 
    ba = MODx (ba, global.d, global.n) 
    bb = MODx (bb, global.d, global.n) 
    bc = ba mod 16 
    ba = (ba div 16) * 16 + mm div 16 
    mm = bc * 16 + b mod 16 
    file_bin_write_byte (fileido, ba) 
    file_bin_write_byte (fileido, b) 
} until (file_bin_position (fileid)> file_bin_size (fileid) -1 ) 

file_bin_close (fileid) 
file_bin_close (fileido)


