/// @description Insert description here
// You can write your code in this editor
if(health_bar != noone){
	health_bar.percentage1 = p1.player.health / 500;
	health_bar.percentage2 = p2.player.health / 500;
}
if(ult_bar!= noone){
	ult_bar.percentage1 = p1.current_ult/p1.player.ult_charge;
	ult_bar.percentage2 = p2.current_ult/p2.player.ult_charge;
}
if(started){
	for(var i=0; i < array_length(players); i++){
		if(players[i].y>room_height){
			players[i].state = STATE.DEAD;
		}
	}
	if(players[0].state == STATE.DEAD || players[1].state = STATE.DEAD){
		game_end();
	}
}