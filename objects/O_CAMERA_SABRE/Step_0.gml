
var xCam = clamp(O_DIDILE_SABRE2.x - wCam / 2, 0, room_width - wCam);
var yCam = clamp(O_DIDILE_SABRE2.y - hCam / 2, 0, room_height - hCam);

var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.7);

camera_set_view_pos(view_camera[0], newX, newY);

// Dunes
layer_x(layer_get_id("Dunes"), newX * 0.40);

// Sphynx_Rochers_Pierre sur Dunes
layer_x(layer_get_id("Sphynx_Rochers_Pierre"), newX * 0.40);

// Dunes_2
layer_x(layer_get_id("Dunes_2"), newX * 0.60);

// Chateau_Lointains sur Dunes_2
layer_x(layer_get_id("Chateau_Lointains"), newX * 0.60);

// Pyramide_1
layer_x(layer_get_id("Pyramide_1"), newX * 0.50);

// Pyramide_2
layer_x(layer_get_id("Pyramide_2"), newX * 0.60);

