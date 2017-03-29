/*This is the "piece of code" that will be
 *used for an action to start the RSA encryption.
 *
 *All of the arugemnts used the other scripts are 
 *just place holders for demonstration purposes.
 *
 *This code demonstrates both encryption and decryption.
 *We will need to separate this code into two different 
 *actions later.
 *
 *
 *          ----FOR ENCRYPTION----
 *This code checks for an encrypted file, if TRUE,
 *it creates a new encrypted file based on the 
 *encrypted file already in the file system. 
 *
 *
 *          ----FOR DECRYPTION----
 *This code will cycle through each character and
 *then do stuff, then close the file, then delete
 *the file for security reasons
 */

 
 
/*A key set to 19 is created (must be prime btw)
 *the parameter for generatePublicKeys is also
 *refrenced as 'e' in the scripts 
 */
generatePublicKeys (19); 


//Check to see if the encryption file exists (it will)
if(file_exists("MAKE_ENCRYPTION_replay.txt"))
{
    encrypt("MAKE_ENCRYPTION_replay.txt" , "ENCRYPTED_replay.txt ")
}
 
 
//decrypt the encrpyted file 
decrypt ("ENCYPTED_replay.txt" , "DECRYPTED_replay.txt"); 

//char placeholder
var ss =" "; 

//find the file and save to fileid
fileid = file_bin_open ( "DECRYPTED_replay.txt", 0) 


//loop to cycle through each character in the file
do 
{ 

    ba = file_bin_read_byte (fileid) 
    ss += chr (ba) 
    
} until (file_bin_position (fileid) > file_bin_size (fileid) -1) 


//close the file
file_bin_close (fileid)

//delete decrypted file for security reasons 
file_delete ( "DECRYPTED_replay.txt")




