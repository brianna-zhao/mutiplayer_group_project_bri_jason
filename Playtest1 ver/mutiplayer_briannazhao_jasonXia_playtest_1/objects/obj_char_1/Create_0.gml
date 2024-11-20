/// @description Insert description here
// You can write your code in this editor
event_inherited();

player.health = 500;
player.dmg_before_fall = 70;
player.name = "char1";
player.ult_charge = 5;
player.projectile = obj_char_1_proj;
player.dmg = 50;
player.frames_between_shots = 20;
player.bullet_speed = 100;

//game feel variables
accel = 5;
decel = 5;
mspd = 25;
ult_mspd = 50;
normal_mspd = 25;
grav = 6;
coyote_time = 8;
jump_str = 70;
ult_jmp_str = 110;
normal_jmp_str = 70;

//mechanics
max_jumps = 1;

//do not modify
grav_normal = grav;
grav_neg = -grav;

ult_timer = 10 * 60;

ult_fx = -1;
in_ult = false;

function ult(){
	ult_fx = spr_char_1_ult_fx;
	in_ult = true;
	alarm[2] = ult_timer;
}