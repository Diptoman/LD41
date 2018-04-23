/// @description Insert description here
// You can write your code in this editor
draw_self();
col = make_color_rgb(20, 90, 188);
draw_healthbar(x + 36, y + 24, x + 36 + 286, y + 24 + 36, (obj_controller._bossHP / obj_controller._maxBossHP) * 100, c_black, col, col, 0, 1, 0);