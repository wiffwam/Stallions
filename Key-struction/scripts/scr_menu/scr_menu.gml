
switch (mpos)
{
	case 0:
	{
		room_goto(rm_game);
		break;
	}
	case 1:
	{
		room_goto(rm_story);
		break;
	}
	case 2:
	{
		room_goto(rm_instruction); 
		break;
	}
	case 3:
	{
		room_goto(rm_credit);
		break;
	}
	case 4:
	{
		game_end();
		break;
	}
	default: break;
	
	
}

