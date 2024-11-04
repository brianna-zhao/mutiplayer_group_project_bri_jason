draw_self();

if (global.player1_choice == 2) {
    draw_set_color(c_red);
    draw_rectangle(x - sprite_width / 2 - 2, y-2, x + sprite_width / 2+2, y + sprite_height+2, true);
    draw_set_color(c_white);
}

if (global.player2_choice == 2) {
    draw_set_color(c_blue);
    draw_rectangle(x - sprite_width / 2 - 4, y - 4, x + sprite_width / 2 + 4, y + sprite_height + 4, true);
    draw_set_color(c_white);
}
