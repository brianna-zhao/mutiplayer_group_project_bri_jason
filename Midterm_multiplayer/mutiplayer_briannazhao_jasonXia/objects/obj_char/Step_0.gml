/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 5; i++){
	if(keyboard_check_pressed(player.keys[i] && state != STATE.FALL)){
		current_ability = i;
		in_alarm = false;
		deactivateAllAlarms();
		state = STATE.ABILITY;
		break;
	}
}

show_debug_message(state);
if((keyboard_check(player.keys[5][0]) || keyboard_check(player.keys[5][1])) && state != STATE.MOVING){
	in_alarm = false;
	deactivateAllAlarms();
	state = STATE.MOVING;
}
else if(!fell && state != STATE.IDLE && !(keyboard_check(player.keys[5][0]) || keyboard_check(player.keys[5][1]))){
		in_alarm = false;
		deactivateAllAlarms();
		state = STATE.IDLE;
}

if(enemy.x>=x){
	image_xscale = 1
}
else{
	image_xscale = -1;
}

if(!in_alarm){
	switch(state){
		case STATE.IDLE:
			alarm[0] = 1;
			hspeed = 0;
			break;
		case STATE.MOVING:
			alarm[1] = 1;
			if(keyboard_check(player.keys[5][0])){
				if(x>=100){
					hspeed = -10;
				}
				else{
					hspeed = 0;
				}
			}
			else if(keyboard_check(player.keys[5][1])){
				if(x <= room_width - 100){
					hspeed = 10;
				}
				else{
					hspeed = 0;
				}
			}
			break;
		case STATE.INAIR:
			image_index = 4;
			if(keyboard_check(player.keys[5][0])){
				if(x>=100){
					hspeed = -10;
				}
				else{
					hspeed = 0;
				}
			}
			else if(keyboard_check(player.keys[5][1])){
				if(x <= room_width - 100){
					hspeed = 10;
				}
				else{
					hspeed = 0;
				}
			}
			else{
				hspeed = 0;
			}
			break;
		case STATE.ABILITY:
			alarm[current_ability + 2] = 1;
			break;
	}
}