// Get the viewport dimensions (assuming viewport[0] is being used)
var viewport_width = 1366;
var viewport_height = 768;

// Calculate the viewport aspect ratio
var viewport_aspect_ratio = viewport_width / viewport_height;

// Get the positions of the objects to keep in view
var x1 = object_a.x;
var y1 = object_a.y;
var x2 = object_b.x;
var y2 = object_b.y;

// Find the center point between the two objects
var center_x = (x1 + x2) / 2;
var center_y = (y1 + y2) / 2;

// Calculate required dimensions to include both objects
var required_width = min(abs(x2 - x1) + min_camera_width, max_camera_width);
var required_height = min(abs(y2 - y1) + min_camera_height, max_camera_height);

// Apply the viewport aspect ratio constraint
if (required_width / required_height > viewport_aspect_ratio) {
    // Adjust height to fit the viewport aspect ratio
    required_height = required_width / viewport_aspect_ratio;
} else {
    // Adjust width to fit the viewport aspect ratio
    required_width = required_height * viewport_aspect_ratio;
}

// Ensure the camera size is at least the minimum size
var camera_width = max(required_width, min_camera_width);
var camera_height = max(required_height, min_camera_height);

// Calculate the desired camera position
var cam_x = center_x - camera_width / 2;
var cam_y = center_y - camera_height / 2;

// Clamp the camera position to stay within room boundaries
cam_x = clamp(cam_x, 0, room_width - camera_width);
cam_y = clamp(cam_y, 0, room_height - camera_height);

// Update the camera size and position
camera_set_view_size(camera, camera_width, camera_height);
camera_set_view_pos(camera, cam_x, cam_y);