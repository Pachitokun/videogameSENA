  /// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(keyboard_check(vk_right)){
	x = x + Speed;
	sprite_index = spr_bat_man_running;
	image_xscale = 1;
}
else if(keyboard_check(vk_left)){
	x = x - Speed;
	sprite_index = spr_bat_man_running;
	image_xscale = -1;
}
else if(keyboard_check(vk_up)){
	y = y - Speed;
	sprite_index = spr_bat_man_running;
	image_xscale = -1;
}
else if(keyboard_check(vk_down)){
	y = y + Speed;
	sprite_index = spr_bat_man_running;
	image_xscale = 1;
}
else {
	sprite_index = spr_bat_man_idle;
      }