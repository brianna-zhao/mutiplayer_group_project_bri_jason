/// @description Insert description here
// You can write your code in this editor
// Assume you have sprite_container and sprite_bar set up in your project
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();

// Set dimensions and positions for the containers
var container_width = 250;
var container_height = 50;

// Set the x and y coordinates for each container
var left_x = 50;
var left_y = 50;
var right_x = screen_width - container_width - 50;
var right_y = 50;

// Draw the left health bar container
draw_sprite(spr_container_1, 0, left_x-10, left_y - 15);

// Draw the left health bar fill based on percentage1
var left_fill_width = container_width * percentage1; // Calculate the width based on percentage
draw_sprite_part(spr_bar_1, 0, 0, 0, left_fill_width, container_height, left_x, left_y);

// Draw the right health bar container
draw_sprite(spr_container_2, 0, right_x-10, right_y - 15);

// Draw the right health bar fill based on percentage2
var right_fill_width = container_width * percentage2; // Calculate the width based on percentage
draw_sprite_part(spr_bar_2, 0, container_width - right_fill_width, 0, right_fill_width, container_height, right_x + (container_width - right_fill_width), right_y);