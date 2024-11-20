/// @description Insert description here
// You can write your code in this editor
if(room == Room2){
	players = instantiate_players();
	set_camera(players);
	health_bar = instance_create_layer(-1,-1,"Instances", obj_healthbar_UI);
	ult_bar = instance_create_layer(-1,-1,"Instances",obj_ult_UI);
	ult_bar.left_container = getultcontainer(players[0]);
	ult_bar.right_container = getultcontainer(players[1]);
	started = true;
}