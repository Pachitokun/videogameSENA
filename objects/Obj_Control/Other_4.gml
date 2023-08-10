/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_stop_all();

if(room == Level1){
	audio_play_sound(Sound1,0,true);
}
else {
	audio_stop_sound(Sound1);
	audio_play_sound(Ugh,0,true);
}