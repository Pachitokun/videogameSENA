 /// @description Inserte aquí la descripción
// Puede escribir su código en este editor
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyLeft = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyLeft = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);



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
script_execute(state);