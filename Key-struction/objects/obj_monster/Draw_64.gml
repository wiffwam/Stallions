/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (health / 10) * 100;
if(global.moving==false)
draw_healthbar(155, 270, 305, 280, pc, c_black, c_red, c_lime, 0, true, true);
//draw_text(20,140,"img index: "+ string(image_index));
//draw_text(20,160,"img index: "+ string(sprite_index));
//draw_text(20,180,"img index: "+ string(spr_monster_attack));
//draw_text(20,200,"img index: "+ string(spr_gamemonsteridle));
//draw_text(20,220,"healthex: "+ string(health));
//draw_text(20,240,"correct index: "+ string(global.correctCount));
//draw_text(20,260,"attacked: "+ string(attacked));