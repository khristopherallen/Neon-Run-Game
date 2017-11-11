/// @description Add color to the character

gpu_set_fog(true, global.color_[col_.blue], 0, 1);
draw_sprite_ext(s_character, 0, x, y, 1, 1, rot_, c_white, image_alpha);
gpu_set_fog(false, global.color_[col_.blue], 0, 1);

rot_ += 5;
