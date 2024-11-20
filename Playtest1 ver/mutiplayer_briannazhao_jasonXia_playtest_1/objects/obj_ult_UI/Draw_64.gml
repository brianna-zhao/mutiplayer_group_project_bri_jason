/// @description Insert description here
// You can write your code in this editor

if(left_container != -1 && right_container != -1){
	// Assume you have sprite_container and sprite_bar set up in your project
	var screen_width = display_get_gui_width();
	var screen_height = display_get_gui_height();

	// Set dimensions and positions for the containers
	var container_width = 250;
	var container_height = 50;

	// Set the x and y coordinates for each container
	var left_x = 50;
	var left_y = 110;
	var right_x = screen_width - container_width - 30;
	var right_y = 110;

	show_debug_message(left_container)

	// Draw the left health bar container
	draw_sprite(left_container, 0, left_x-10, left_y - 15);

	// Draw the left health bar fill based on percentage1
	var left_fill_width = container_width * percentage1; // Calculate the width based on percentage
	draw_sprite_part(spr_bar_3, 0, 0, 0, left_fill_width, container_height, left_x, left_y);

	// Draw the right health bar container
	draw_sprite_ext(right_container, 0, right_x - 10 + container_width, right_y - 15, -1, 1, 0, c_white, 1);

	// Draw the right health bar fill based on percentage2
	var right_fill_width = container_width * percentage2; // Calculate the width based on percentage
	draw_sprite_part(spr_bar_3, 0, container_width - right_fill_width, 0, right_fill_width, container_height, right_x + (container_width - right_fill_width), right_y);
}