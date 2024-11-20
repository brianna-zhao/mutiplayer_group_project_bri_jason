/// @description Insert description here
// You can write your code in this editor
global.player1_choice = -1;
global.player2_choice = -1;
global.selection_stage = 1;

global.chars = [obj_char_1, obj_char_2, obj_char_3, obj_char_4];

key_set = [[ord("G"), ord("H"), [ord("A"), ord("D"), ord("W"), ord("S")]],
			[ord("N"), ord("M"), [vk_left, vk_right, vk_up, vk_down]]];

p1=noone;
p2=noone;
health_bar = noone;
ult_bar =noone;

started = false;

function instantiate_players(){
	p1 = instance_create_layer(300, 400, "Instances", global.chars[global.player1_choice - 1]);
	p2 = instance_create_layer(room_width - 300, 400, "Instances", global.chars[global.player2_choice - 1]);	
	p2.image_xscale = -1;
	p1.player.keys=key_set[0];
	p2.player.keys=key_set[1];
	p1.enemy = p2;
	p2.enemy = p1;
	
	return [p1,p2];
}

function set_camera(_players){
	cam_follow = instance_create_layer(x,y,"Instances",obj_cam_follow_object);
	cam_follow.p1=_players[0];
	cam_follow.p2=_players[1];
	
	camera_set_view_target(camera_get_default(), cam_follow);
	
	camera_manager = instance_create_layer(-1,-1,"Instances", obj_camera_manager);
	camera_manager.target_object = cam_follow;
	camera_manager.object_a = _players[0];
	camera_manager.object_b = _players[1];
	
}

function getultcontainer(player){
	switch(player.player.name){
		case "char1":
			return spr_char_ult_container_1;
		case "char2":
			return spr_char_ult_container_2;
		case "char3":
			return spr_char_ult_container_3;
		case "char4":
			return spr_char_ult_container_4;
	}
}
