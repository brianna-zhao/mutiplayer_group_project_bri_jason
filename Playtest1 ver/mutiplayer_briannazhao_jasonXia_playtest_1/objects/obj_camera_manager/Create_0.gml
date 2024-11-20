/// @description Insert description here
// You can write your code in this editor
// Minimum dimensions for the camera
min_camera_width = 1366 * 2;
min_camera_height = 768 * 2;

max_camera_width = 6830;
max_camera_height = 3840;

// Calculate the aspect ratio based on minimum dimensions
aspect_ratio = min_camera_width / min_camera_height;

// Target object to follow (e.g., player)
target_object = noone;

// Objects to keep within view
object_a = noone;
object_b = noone;

// Set up the camera
camera = view_camera[0]; // Assuming camera index 0 is in use