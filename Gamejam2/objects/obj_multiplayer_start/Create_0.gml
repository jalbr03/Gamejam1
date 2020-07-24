window_set_fullscreen(true);

enum customstates{
	join,
	color,
	player_done,
	//name,
	//existing
	//paint_char,
	//paint_bullet,
}

self.number_of_players = 0;
self.players = array_create(self.max_players);
global.players_ready = false;
time = 3;
txt_fall = 15;
txt_alpha = 0;
switch (self.layout_strategy) {
	case "Linear":
		scr_layout_linear();
		break;
		
	case "Wrap":
		scr_layout_wrap();
		break;
		
	case "Resize":
		scr_layout_resize();
		break;
}
