_goal_x = camera_target.x + camera_offset_x - global.camera_w/2;
_goal_y = camera_target.y + camera_offset_y - global.camera_h/2;

global.camera_x = global.camera_x * camera_weight + _goal_x * (1-camera_weight);
global.camera_y = global.camera_y * camera_weight + _goal_y * (1-camera_weight);

camera_set_view_pos(view_camera[0],global.camera_x,global.camera_y);