
//scr_get_hurt();
if(health >0){
scr_get_hurt();
}
else{
if(dcount==0)
{
dcount=1;
scr_death();
alarm[1]=30;

}
else if(alarm[1]==-1){
sprite_index=spr_monsterdead;
}

}

