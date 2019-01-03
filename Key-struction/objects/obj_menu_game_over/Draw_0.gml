/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_dictfont);
draw_set_color(c_white);

//var m;
//for ( m= 0; m < array_length_1d(menu); m+= 1)
//{
	//draw_text(x + space, y + ( m * space), string(menu[m]));

	draw_sprite(spr_restart_button, 0, x + space, y + ( 0 * space));
	draw_sprite(spr_exit_button, 0, x + space, y + ( 1 * space));
//}

if (GOmpos == 0)
{
	draw_sprite(spr_restart_button1, 0, x + space, y + ( 0 * space));
}
if (GOmpos == 1)
{
	draw_sprite(spr_exit_button1, 0, x + space, y + ( 1 * space));
}

draw_sprite(sprite_index, 0 , x + 32, y + GOmpos * space);

