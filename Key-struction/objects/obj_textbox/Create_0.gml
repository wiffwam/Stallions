/// @description Insert description here
// You can write your code in this editor\

//var map_file  = get_open_filename("text file|*.txt", "");
//var fileID = file_text_open_read(working_directory+"\Dictionary.txt");
var fileID = file_text_open_read("Dictionary.txt");

if fileID = -1{
	show_message("Error! handle here");
	exit;
}


//Text_string[20];
i=0;
while(!file_text_eof(fileID)){
text[i] = file_text_read_string(fileID);
//text_string[i] = text;
file_text_readln(fileID);
i++;
}

file_text_close(fileID);
//text = "test test test";
text_lng = string_length(text[0]);

boxWidth = sprite_get_width(spr_box)-10;
stringheight = string_height(text[0]);

typetext = 2;
count = 1;
redraw = false;
correct = true;
global.bullet =true;
shift_button = false;
sentence="";
s_count=0;
text_char = "";
type_sentence = "";
c=1;
aSizecheck = 0;
arraylen = array_length_1d(text);

