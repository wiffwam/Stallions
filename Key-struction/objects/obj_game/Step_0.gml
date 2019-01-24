
switch(state)
{
	case "IN_GAME":
	{
		draw_set_alpha(1);
		break;
	}
	case "FADE_OUT":
	{
		alpha -= 0.01;
		if(alpha <=0)
		{
			alpha = 0;
			
			//TRANSIT TO GAME OVER SCREEN WHEN FADE OUT COMPLETED
			if (global.shouldGotoGameover == true){
				room_goto(rm_game_over);
			}
			
			//TRANSIT TO LEVEL COMPLETE SCREEN WHEN FADE OUT COMPLETED
			if (score <= 0){
				room_goto(rm_level_complete);
				global.level++;
			}
			
		}
		draw_set_alpha(alpha);
		break;
	}
}
