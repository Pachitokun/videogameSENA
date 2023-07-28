  /// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with(other){
	image_blend = c_lime;	
	hp = hp - 1;
	if(hp <= 0) {
	audio_play_sound(Ugh,0,false)
	audio_stop_sound(Sound1)
	room_goto(RoomGameOver)
	}
	
}
depth = -y;