if(state == "FADE_IN")
{
	alpha += 0.01;
	if(alpha >= 1)
	{
		alpha =1;
		state = "IN_GAME";
	}
	draw_set_alpha(alpha);
}
