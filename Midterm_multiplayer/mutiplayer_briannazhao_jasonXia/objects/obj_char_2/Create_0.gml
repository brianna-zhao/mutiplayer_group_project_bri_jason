/// @description Insert description here
// You can write your code in this editor
event_inherited();

player.health = 500;
player.dmg_before_fall = 70;
player.name = "char2";
player.ult_charge = 15;
player.projectile = obj_char_2_proj;
player.dmg = 5;
player.frames_between_shots = 5;
player.bullet_speed = 70;

//game feel variables
accel = 5;
decel = 5;
mspd = 25;
grav = 6;
coyote_time = 8;
jump_str = 70;

//mechanics
max_jumps = 1;

//do not modify
grav_normal = grav;
grav_neg = -grav;

ult_speed = 60;
ult_damage = 100;
ult_projectile = obj_char_2_ult_proj;

function attack(){
	if(player.projectile != noone){
		proj = instance_create_layer(shooter_x,shooter_y,"Instances", player.projectile);
		proj.source  = self;
		proj.damage = player.dmg;
		var random_angle = irandom_range(-15, 15);
        proj.direction = random_angle;
		proj.speed = player.bullet_speed * image_xscale;
	}
}

function ult(){
	proj = instance_create_layer(shooter_x,shooter_y,"Instances", ult_projectile);
	proj.source  = self;
	proj.damage = ult_damage;
    proj.direction = 90 + 45 * -image_xscale;
	proj.speed = ult_speed;
}