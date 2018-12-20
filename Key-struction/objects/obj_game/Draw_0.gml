/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_keys);
draw_text(20,40,"HiTs To DeStRoY: "+string(score));
draw_text(20,100,"c: "+string(global.correctCount));
draw_text(20,120,"c: "+string(health));


var pc;
pc = (health / 10) * 100;
draw_healthbar(120, 270, 270, 280, pc, c_black, c_red, c_lime, 0, true, true);