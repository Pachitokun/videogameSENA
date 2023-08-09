state = PlayerStateFree;
collisionMap = layer_tilemap_get_id(layer_get_id("Coll"));


image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;


//Roll Anims
spriteRoll = Spr_Roll;
speedRoll = 3.0;

Spd = 4; 
hp = 100;


distanceRoll = 72;
localFrame = 0;
spriteIdle = idle;

if(room == Level1){
	audio_play_sound(Sound1,0,true);
}
else {
	audio_stop_sound(Sound1);
	audio_play_sound(Ugh,0,true);
}

