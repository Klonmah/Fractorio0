draw_self();
draw_set_font(font_default);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);
draw_text(x, y, text);

//Si algo falla, esto antes estaba en Draw_GUI sin el draw_self()