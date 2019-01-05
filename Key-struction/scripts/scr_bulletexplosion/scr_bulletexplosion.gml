
speed = 0;
//if(!audio_is_playing(sfx_explosion))

//if(!audio_is_playing(sfx_explosion))
//audio_play_sound(sfx_explosion,1,false);
if(sprite_index != spr_explosion){
image_index = 0;
audio_play_sound(sfx_bulletexplosion,1,false);
}

sprite_index=spr_explosion;
//image_index = 0;
//if(image_index == 0){
//	audio_play_sound(sfx_explosion,1,false);
//}
if(image_index > 73)
instance_destroy();
//audio_stop_sound(sfx_explosion);
