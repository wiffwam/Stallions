/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//if(keyboard_check(vk_anykey) ){

if(global.moving == false){
redraw=false;	
correct=false;
	
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

if(score >0 && health > 0){
text_char = string_char_at(text[aSizecheck],count);


debugtrue = keyboard_check(vk_shift);
debugtrue = keyboard_check_released(vk_shift);
debugtrue2 = keyboard_check_pressed(vk_shift)

//if(debugtrue==true && debugtrue2==true){
//if(keyboard_check_pressed(vk_shift)){
//if(keyboard_check(vk_shift)){
//shift_button = true;

//}
//else shift_button = false;



	
//if(debugtrue==true && debugtrue2==true){
//debugpress = keyboard_check_pressed(vk_shift);
if(!keyboard_check_pressed(vk_shift)&&debugtrue==0){
//if (!keyboard_check(vk_shift) && !keyboard_check_pressed(vk_shift)){
	if(debugtrue==false){
//if(keyboard_check_pressed(vk_shift)){
//if(keyboard_check(vk_shift)){
    shift_button = true;

     }
    else shift_button = false;
	if(shift_button == true)
//	if(keyboard_check(vk_shift) && keyboard_check(ord("T")) ) 
	{
		s_count = 0;
		typetext2 = string(keyboard_string);
	    
		
		if(text_char == typetext2){
			redraw = true;
	//		draw_set_font(c_green);
	//		draw_text_ext(x,y, text_char,stringheight,boxWidth);
			correct = true;
			global.correctCount++;
			score -=1;
			global.totalkeyspressed++;
			global.totalcorrectCount++;
			
		}
		else{
			redraw = true;
		    correct = false;
			global.incorrectCount++;
			health -=1;
			global.totalkeyspressed++;
			
			
		}
		show_debug_message(global.incorrectCount);
		count++;
	    c++;
		type_sentence = type_sentence+text_char;
	    
		
		
	}
	
	else if (!keyboard_check(vk_shift))
	{
		s_count = 0;
  		typetext2 = string(keyboard_string);
		
		
		if(text_char == typetext2){
			redraw = true;
	//		draw_set_font(c_green);
	//		draw_text_ext(x,y, text_char,stringheight,boxWidth);
			correct = true;
			global.correctCount++;
			global.totalcorrectCount++;
			score-=1;
			global.bullet = true;
			global.totalkeyspressed++;
			
		}
		else{
			redraw = true;
		    correct = false;
			health -=1;
			global.bullet=false
			global.totalkeyspressed++;
			global.incorrectCount++;
			
		
		}
		
		count++;
		c++;
		type_sentence = type_sentence+text_char;
	}
}

}


keyboard_string = "";

}
}


