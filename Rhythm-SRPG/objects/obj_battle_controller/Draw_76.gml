if (!surface_exists(battle_surf)) {
	battle_surf = surface_create(global.camera_w, global.camera_h);
}

surface_set_target(battle_surf);
	draw_clear(c_black);
surface_reset_target();