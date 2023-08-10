 /// @description Inserte aquí la descripción
// Puede escribir su código en este editor
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyLeft = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyLeft = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

switch (state)
{
	case "move":
	
		break;
}
if state == "move"
{
	
	if(keyboard_check(vk_right))||keyboard_check(ord("D")){
		x = x +Spd;
		sprite_index = Spr_Run;
		image_xscale = 1;
		image_speed = 0.6;
	}
	else if(keyboard_check(vk_left))||keyboard_check(ord("A")){
		x = x - Spd;
		sprite_index = Spr_Run;
		image_xscale = -1;
		image_speed = 0.6;
	} else {
		sprite_index = Spr_idle;
		image_speed = 0.6;
	} 
	
	if(keyboard_check(vk_up))||keyboard_check(ord("W")){
		y = y - Spd;
	 	sprite_index = Spr_Run;
		//image_xscale = 1;
	}
	if(keyboard_check(vk_down))||keyboard_check(ord("S")){
		y = y + Spd;
		sprite_index = Spr_Run;
		//image_xscale = -1;
	}

	
	if keyboard_check_pressed(vk_space) {
		image_index = 0;
		state = "roll";
	}
}
depth = -y;
if(hp <= 0){
	room_goto(RoomGameOver)	
}

if state == "roll"
{
	sprite_index = Spr_Roll;
	image_speed = 1;
	
	if image_xscale == 1 and not place_meeting(x+6, y, Spr_Run)
	{
		x += 3;
	}
	if image_xscale == -1 and not place_meeting(x-6, y, Spr_Run)
	{
		x -= 3;
	}
}
show_debug_message("we have to health ")
show_debug_message(hp);
