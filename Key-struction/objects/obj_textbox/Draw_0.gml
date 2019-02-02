/// @description Insert description here
// You can write your code in this editor
// draw textbox


draw_set_color(c_white);
draw_sprite(spr_box,0,x,y);
//redrawcount = 1;



//Load file from c:\users\brad\appdata\local\key_struction


 
if(debugtrue == 0){ 


//show text
//if(redraw == true){


//global.redrawcount++;
draw_set_font(fnt_dictfont);
draw_text_ext(x-150,y-30, text[aSizecheck],stringheight,boxWidth);

if(aSizecheck < arraylen-1){
	draw_set_color(c_teal);
	draw_text_ext(x-150,y+20, text[aSizecheck+1],stringheight,boxWidth);
}



//for(;global.i<1;global.i++)
//{
//if(string_length(type_sentence)==1|| string_length(type_sentence)==0){}
//else{

    draw_set_color(c_gray);
	draw_text_ext(x-150,y-30,sentence,stringheight,boxWidth);
//	draw_text_ext(x-150,y-30,type_sentence,stringheight,boxWidth);
//}
//}

var s_width=0;

if(redraw == true){
	if(correct){
		while(s_count ==0){	
			sentence = string_insert(text_char,sentence,string_length(sentence)+1)
		  //  sentence = sentence+text_char;
			s_count = 1;
		}
		s_width = string_width(sentence);
		if(s_width == 0 || s_width == 10)
		{
			draw_set_color(c_lime);
			draw_text_ext(x-150,y-30,text_char,stringheight,boxWidth);
			global.prev_colour = c_lime;
			global.prev_charloc = x-150;
			global.prev_textchar = text_char;
			
		}
		else{
			draw_set_color(c_lime);
			draw_text_ext(x-150+string_width(sentence)-22,y-30,text_char,stringheight,boxWidth);
			global.prev_colour = c_lime;
			global.prev_charloc = x-150+string_width(sentence)-22;
			global.prev_textchar = text_char;
		}
//	draw_text_ext(x,y, text_char,stringheight,boxWidth);
	
	
	}
	
	else{
		while(s_count ==0){	
			//bug within GameMaker as explained in https://www.reddit.com/r/gamemaker/comments/5efxce/help_string_concatenation_quietly_failing_at/
			sentence = string_insert(text_char,sentence,string_length(sentence)+1)
		//	var sentence2 = type_sentence;
		//	sentence2 = sentence2+text_char;
		//    sentence = sentence+text_char;
			s_count = 1;
		}
		s_width = string_width(sentence);
		if(s_width == 0 || s_width == 10)
		{
			draw_set_color(c_red);
			draw_text_ext(x-150,y-30,text_char,stringheight,boxWidth);
				global.prev_colour = c_red;
			global.prev_charloc = x-150;
			global.prev_textchar = text_char;
			
		}
		else{
			draw_set_color(c_red);
			draw_text_ext(x-150+string_width(sentence)-22,y-30,text_char,stringheight,boxWidth);
			global.prev_colour = c_red;
			global.prev_charloc = x-150+string_width(sentence)-22;
			global.prev_textchar = text_char;
		}
	
	}
}
}

if(global.valid_key ==0){
			draw_set_color(global.prev_colour);
			draw_text_ext(global.prev_charloc,y-30,global.prev_textchar,stringheight,boxWidth);
}








