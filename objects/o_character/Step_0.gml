/// @description Player Movement

var hInput = keyboard_check(vk_right) - keyboard_check(vk_left);


var downDir = global.components[dir.down];

if (!place_meeting(x, y + downDir[1], o_collision)){
	speed_[v] += gravity_ * downDir[1];
	onGround_ = false;
} else {
	onGround_ = true;
}

// player hit head and needs to go down
if (place_meeting(x, y - downDir[1], o_collision)){
	speed_[v] = 1;
}

if (keyboard_check(vk_space) && onGround_) {
	speed_[v] = -jump_height_ * downDir[1];
	x_scale_ = image_xscale*.8 * downDir[1];
	y_scale_ = image_xscale*1.4 * downDir[1];
} 

move (speed_, 0);

// Check for landing
if place_meeting(x, y + downDir[1], o_collision) && !place_meeting(x, yprevious + downDir[1], o_collision) {
	x_scale_ = image_xscale*1.2 * downDir[1];
	y_scale_ = image_yscale*.8 * downDir[1];
}

speed_[h] += hInput * acceleration_;
speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
if (hInput == 0 && onGround_){
	speed_[h] = lerp(speed_[h], 0, friction_);
} 

speed_[h] = 5;
rot_ -= 15;