/// @description Insert description here
// You can write your code in this editor
if(other.source != self){
	player.takeDamage(other.damage);
	if(other.source.player.ult_charge > other.source.current_ult){
		other.source.current_ult++;
	}
	xspd = other.x_knockback;
	yspd = -other.y_knockback;
	instance_destroy(other);
}