/// @description Insert description here
// You can write your code in this editor
player = {
    name: "",
    health: 500,
	shooter_x_offset: 0,
	shooter_y_offset: 0,
	dmg: 10,
	frames_between_shots: 0,
	bullet_speed: 0,
    takeDamage: function(amount) {
        self.health -= amount;
    },
	tenacity: 0,
	projectile: noone,
	keys: [],
	ult_charge: 10,
};

enum STATE{
	MOVING,
	IDLE,
	ABILITY,
	AFTERATK,
	UUT,
	DEAD
	
}

enemy = noone;

current_ult = 0;

//cutomizable variables - override on children
mspd = 0;
accel = 0;
decel = 0;
grav = 0;
coyote_time = 1;
jump_str = 0;
max_jumps = 1;

//do not modify
grav_normal = grav;
grav_neg = -grav;
xspd = 0;
yspd = 0;
on_ground = false;
hmove = 0;
jump_press = false;
num_jumps = max_jumps;
moving = false;
jump_held = false;
on_wall_left = false;
on_wall_right = false;
on_wall = false;
was_grounded = false;

state = STATE.IDLE;

image_speed = 0;

gravity = 5;

idle_frames = [0,1];
move_frames = [2,3];
attack_frame = 4;
die_frame = 5;

shooter_x = x;
shooter_y = y;

function deactivate_all_alarms() {
    for (var i = 0; i < 12; i++) {
        alarm[i] = -1;
    }
}

function attack(){
	if(player.projectile != noone){
		proj = instance_create_layer(shooter_x,shooter_y,"Instances", player.projectile);
		proj.source  = self;
		proj.damage = player.dmg;
		proj.hspeed = player.bullet_speed * image_xscale;
	}
}

function ult(){
}

function hit(){
	
}