
switch (GOmpos)
{
	case 0:
	{
		global.level = 1;
		room_goto(rm_game);
		break;
	}
	case 1:
	{
		global.level = 1;
		room_goto(rm_menu);
		break;
	}
	default: break;
	
	
}

