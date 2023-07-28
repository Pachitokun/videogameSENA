state = PlayerStateFree;
collisionMap = lyer_tilemap_get_id(layer_get_id("Col"));


image_speed = 0;
hspeed = 0;
vspeed = 0;
speedwalk = 2.0;

Spd = 4; 
hp = 100;
speedRoll = 3.0;
spriteRoll = Spr_Roll;
distanceRoll = 72;
localFrame = 0;
spriteIdle = idle;

if(room == Room1){
	audio_play_sound(Sound1,0,true);
}
else {
	audio_stop_sound(Sound1);
	audio_play_sound(Ugh,0,true);
}

