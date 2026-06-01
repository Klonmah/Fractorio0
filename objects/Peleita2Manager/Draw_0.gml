draw_set_font(font_default);
draw_set_color(c_red);
if segundos>=0
{
	draw_text(960,50,segundos);
}
else
{
	draw_text(960,50,"0");
}