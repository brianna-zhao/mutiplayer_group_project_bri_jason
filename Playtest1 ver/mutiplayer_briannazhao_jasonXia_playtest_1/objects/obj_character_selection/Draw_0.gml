draw_text(50, 50, "Player 1 Choice: " + (global.player1_choice != -1 ? string(global.player1_choice) : "Not chosen"));
draw_text(50, 100, "Player 2 Choice: " + (global.player2_choice != -1 ? string(global.player2_choice) : "Not chosen"));

if (global.selection_stage == 1) {
    draw_text(200, 75, "Player 1, press 1-4 to choose, then press Control to confirm.");
} else if (global.selection_stage == 2) {
    draw_text(200, 75, "Player 2, press 1-4 to choose, then press Control to confirm.");
}