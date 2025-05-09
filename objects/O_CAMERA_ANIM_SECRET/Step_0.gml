

var xCam = clamp(O_CAMERA_SECRET.x - wCam / 2, 0, room_width - wCam);
var yCam = clamp(O_CAMERA_SECRET.y - hCam / 2, 0, room_height - hCam);

var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.2);

camera_set_view_pos(view_camera[0], newX, newY);

// Dunes 2
layer_x(layer_get_id("Dunes_2"), newX * 0.60);