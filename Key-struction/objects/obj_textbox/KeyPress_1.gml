/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//if(keyboard_check(vk_anykey) ){


if(c > text_lng){
  if(aSizecheck < arraylen-1)
  {
     aSizecheck++;
	 c=1;
	 type_sentence="";
	 sentence="";
	 text_lng = string_length(text[aSizecheck]);
	 text_char = "";
	 count = 1;

	 
  }
  
}

else{

text_char = string_char_at(text[aSizecheck],count);
if(keyboard_check(vk_shift)){
shift_button = true;

}
else shift_button = false;


if (!keyboard_check(vk_shift) || !keyboard_check_pressed(vk_shift)){	
	if(shift_button == true)
//	if(keyboard_check(vk_shift) && keyboard_check(ord("T")) ) 
	{
		s_count = 0;
		typetext2 = string(keyboard_string);
	    redraw = true;
		
		if(text_char == typetext2){
	//		draw_set_font(c_green);
	//		draw_text_ext(x,y, text_char,stringheight,boxWidth);
			correct = true;
			global.correctCount++;
			score -=1;
			global.currentScore++;
			
		}
		else{
		    correct = false;
			health -=1;
			
		}
		count++;
	    c++;
		type_sentence = type_sentence+text_char;
	    
		
		
	}
	
	else if (!keyboard_check(vk_shift))
	{
		s_count = 0;
  		typetext2 = string(keyboard_string);
		redraw = true;
		
		if(text_char == typetext2){
	//		draw_set_font(c_green);
	//		draw_text_ext(x,y, text_char,stringheight,boxWidth);
			correct = true;
			global.correctCount++;
			score-=1;
			global.bullet = true;
			global.currentScore++;
			
		}
		else{
		    correct = false;
			health -=1;
			global.bullet=false
			
		
		}
		count++;
		c++;
		type_sentence = type_sentence+text_char;
	}
}
}	
keyboard_string = "";


