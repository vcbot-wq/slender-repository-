part_system_drawit(global._part_system);

if (!surface_exists(self.light_surface)) {
	var camera = view_get_camera(0);
	var cam_width = camera_get_view_width(camera);
	var cam_height = camera_get_view_height(camera);

	self.light_surface = surface_create(cam_width, cam_height);
}

surface_set_target(self.light_surface);
draw_clear(c_black);
camera_apply(camera);

with (obj_torch) {
	draw_sprite(spr_light, 0, self.x, self.y);
}

surface_reset_target();