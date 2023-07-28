 /// @description Inserte aquí la descripción
// Puede escribir su código en este editor
keyActivate = keyboard_check_pressed(vk_space)
if(keyboard_check(vk_right)){
	x = x +Spd;
	sprite_index = run;
	image_xscale = 1;
}
else if(keyboard_check(vk_left)){
	x = x - Spd;
	sprite_index = run;
	image_xscale = -1;
}
else if(keyboard_check(vk_up)){
	y = y - Spd;
 	sprite_index = run;
	image_xscale = 1;
}
else if(keyboard_check(vk_down)){
	y = y + Spd;
	sprite_index = run; 
	image_xscale = -1;
}
else{
	sprite_index = idle;	
}    
depth = -y;
if(hp <= 0){
	room_goto(RoomGameOver)	
}
show_debug_message("we have to health ")
show_debug_message(hp);