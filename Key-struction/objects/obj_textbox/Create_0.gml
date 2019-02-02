
list_rand = scr_get_rand_list();


var fileID = file_text_open_read("Dictionary.txt");
//Text_string[20];
i=0;
while(!file_text_eof(fileID)){

text[ds_list_find_value(list_rand,i)] = file_text_read_string(fileID);
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
global.moving = true;
shift_button = false;
sentence="";
s_count=0;
text_char = "";
type_sentence = "";
c=1;
aSizecheck = 0;
arraylen = array_length_1d(text);
//redrawcount = 1;
debugtrue=0;
global.valid_key = false;

global.prev_colour = c_white;
global.prev_charloc = 0;
global.prev_textchar = "";

sentence2 = ""