
switch (GOmpos)
{
	case 0:
	{
		room_goto(rm_game);
		break;
	}
	case 1:
	{
		room_goto(rm_menu);
		break;
	}
	case 2:
	{
		game_end();
		break;
	}
	default: break;
	
	
}

