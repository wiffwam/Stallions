sentences = ds_list_create();
ds_list_add(sentences
, "1238888888888888888888888888888888888884" 
, "567888888888888888888888888888888888"
, "99999999999999999999999999999"
, "4444444444444444444444444");

index = 0;
//randomize();
var i = irandom(ds_list_size(sentences) -1);
sentence = ds_list_find_value(sentences, i);

var interval = random_range(0.08,0.15);
alarm[0] = room_speed * interval;