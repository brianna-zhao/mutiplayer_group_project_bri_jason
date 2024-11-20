/// @description Insert description here
// You can write your code in this editor
ult_charged = current_ult == player.ult_charge;
hmove = keyboard_check(player.keys[2][1]) - keyboard_check(player.keys[2][0]);
jump_press = keyboard_check_pressed(player.keys[2][2]);
on_ground = place_meeting(x, y+1, obj_ground);
moving = (hmove != 0);
shooter_x = x+player.shooter_x_offset;
shooter_y = y+player.shooter_y_offset;

if(player.health == 0){
	state = STATE.DEAD;
}
else{
	if (on_ground){
		alarm_set(0, coyote_time);
		num_jumps = max_jumps;
	}

	//if the actor presses jump and has jumps available, jump
	if (jump_press and num_jumps > 0){
		yspd = -jump_str;	
		if (not on_ground){
			num_jumps--;
		}
	}

	//if moving, apply acceleration. otherwise decelerate
	if (moving){
		xspd += accel * hmove;
		if(state != STATE.AFTERATK){
			state = STATE.MOVING;
		}
	} else {
		decelerate(decel);
		if(state != STATE.AFTERATK){
			state = STATE.IDLE;
		}
	}
	//clamp max speed
	xspd = clamp(xspd, -mspd, mspd);

	//apply gravity
	yspd += grav;

	//apply movement, checking for collisions
	move_collide();


	if(xspd>0){
		image_xscale = 1;
	}
	else if(xspd<0){
		image_xscale = -1;
	}

	if(keyboard_check(player.keys[0]) && (state == STATE.MOVING || state == STATE.IDLE)){
		state = STATE.ABILITY;
		alarm[1] = player.frames_between_shots;
	}
	
	if(keyboard_check_pressed(player.keys[1]) && (state == STATE.MOVING || state == STATE.IDLE) && ult_charged){
		state = STATE.UUT;
	}
}

switch(state){
	case STATE.IDLE:
		if(array_contains(idle_frames,floor(image_index + 0.05))){
			image_index += 0.05;
		}
		else{
			image_index = idle_frames[0];
		}
		break;	
	case STATE.MOVING:
		if(array_contains(move_frames,floor(image_index + 0.05))){
			image_index += 0.1;
		}
		else{
			image_index = move_frames[0];
		}
		break;
	case STATE.ABILITY:
		image_index = attack_frame;
		attack();
		state = STATE.AFTERATK;
		break;
	case STATE.AFTERATK:
		image_index = attack_frame;
		break;
	case STATE.UUT:
		current_ult = 0;
		ult();
		break;
	case STATE.DEAD:
		image_index = die_frame;
		break;
		
}