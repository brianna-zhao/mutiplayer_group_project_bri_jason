if (global.selection_stage == 1) {
    if (keyboard_check_pressed(ord("1"))) global.player1_choice = 1;
    if (keyboard_check_pressed(ord("2"))) global.player1_choice = 2;
    if (keyboard_check_pressed(ord("3"))) global.player1_choice = 3;
    if (keyboard_check_pressed(ord("4"))) global.player1_choice = 4;

    if (global.player1_choice != -1 && keyboard_check_pressed(vk_control)) {
        global.selection_stage = 2;
    }
}
else if (global.selection_stage == 2) {
    if (keyboard_check_pressed(ord("1"))) global.player2_choice = 1;
    if (keyboard_check_pressed(ord("2"))) global.player2_choice = 2;
    if (keyboard_check_pressed(ord("3"))) global.player2_choice = 3;
    if (keyboard_check_pressed(ord("4"))) global.player2_choice = 4;

    if (global.player2_choice != -1 && keyboard_check_pressed(vk_control)) {
        room_goto_next();
    }
}