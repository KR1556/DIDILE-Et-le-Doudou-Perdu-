
var xCam = clamp(O_DIDILE_SABRE2.x - wCam / 2, 0, room_width - wCam);
var yCam = clamp(O_DIDILE_SABRE2.y - hCam / 2, 0, room_height - hCam);

var curY = camera_get_view_y(view_camera[0]);

var newY = lerp(curY, yCam, 0);

camera_set_view_pos(view_camera[0], xCam, newY);

// Dunes
layer_x(layer_get_id("Dunes"), xCam * 0.40);

// Sphynx_Rochers_Pierre sur Dunes
layer_x(layer_get_id("Sphynx_Rochers_Pierre"), xCam * 0.40);

// Dunes_2
layer_x(layer_get_id("Dunes_2"), xCam * 0.60);

// Chateau_Lointains sur Dunes_2
layer_x(layer_get_id("Chateau_Lointains"), xCam * 0.60);

// Pyramide_1
layer_x(layer_get_id("Pyramide_1"), xCam * 0.50);

// Pyramide_2
layer_x(layer_get_id("Pyramide_2"), xCam * 0.60);

