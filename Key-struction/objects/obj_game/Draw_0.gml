/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_keys2);
draw_set_color(c_black);
draw_text(20,40,"HiTs To DeStRoY: ");
draw_text(900,40,"LeVel: "); 

draw_set_font(fnt_keys3);
draw_set_color(c_maroon);
draw_text(230,37.5,+string(score));
draw_text(980,37.5,+ string(global.level));

//draw_text(20,100,"c: "+string(state));
//draw_text(20,120,"c: "+string(room));
//draw_text(20,120,"c: "+string(alpha));


var pc;
pc = (health / 10) * 100;
//draw_healthbar(120, 270, 270, 280, pc, c_black, c_red, c_lime, 0, true, true);