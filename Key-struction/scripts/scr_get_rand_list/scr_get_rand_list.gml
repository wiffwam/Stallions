var fileID = file_text_open_read("Dictionary.txt");

if fileID = -1{
	show_message("Error! handle here");
	exit;
}

//randNum = [];
list_rand = ds_list_create();
lines = 0;

while(!file_text_eof(fileID)){
	ds_list_add(list_rand,string(lines))
	file_text_readln(fileID);
	lines++;
}

ds_list_shuffle(list_rand);
file_text_close(fileID);
return list_rand;