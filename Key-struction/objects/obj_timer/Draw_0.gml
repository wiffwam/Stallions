/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_timer);

draw_set_color(c_red);

if(global.timer == true){
	draw_text(450,50,string(showTime));
}