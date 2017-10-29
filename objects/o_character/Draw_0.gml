/// @description Add color to the character

gpu_set_fog(true, global.color_[col_.blue], 0, 1);
draw_self();
gpu_set_fog(false, global.color_[col_.blue], 0, 1);

