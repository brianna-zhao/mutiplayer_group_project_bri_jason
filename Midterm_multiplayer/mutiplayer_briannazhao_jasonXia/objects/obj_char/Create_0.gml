/// @description Insert description here
// You can write your code in this editor
player = {
    name: "",
    health: 500,
	dmg_before_fall: 70,
	dmg: [],
	
    takeDamage: function(amount) {
        self.health -= amount;
    },
	abilities: [],
	keys: [],
	ult_charge: 10,
};

enum STATE{
	MOVING,
	INAIR,
	IDLE,
	ABILITY,
	FALL,
	DEAD
	
}

enemy = noone;

current_ability = -1;
fell = false;
state = STATE.IDLE;
in_alarm = false;

image_speed = 0;

function deactivateAllAlarms(){
	for (var i = 0; i < 12; i++) {
		alarm[i] = -1;
	}

}