draw_set_halign(fa_center);
//draw_set_color(c_white);
draw_set_font(fnt_keys);

var finished = true;
for (var i = 0; i <  array_length_1d(text); i++)
{
   /*var yy = gui_h - (timer-i*spacing) + min(gui_h, 0.25 *(timer-i*spacing)*(timer-i*spacing) / gui_h);
    if ((yy > -spacing) && (yy < gui_h))
    {
        draw_text_transformed(0.5 * gui_w, yy, text[i], yy/gui_h, yy/gui_h, 0);
        finished = false;
    }*/
	var yy = gui_h + (i * 32) - timer;
    if ((yy > 0) && (yy < gui_h))
    {
        
		if(i ==0 || i == 9){
			draw_set_color(c_yellow);
		}
		
		if(i ==  11|| i == 16|| i == 22|| i == 28){
			draw_set_color(c_fuchsia);
		}
		
		draw_text(0.5 * gui_w, yy-200, text[i]);
        finished = false;
		
		draw_set_color(c_white);
    }
}
if (finished)
{
    instance_destroy();
}