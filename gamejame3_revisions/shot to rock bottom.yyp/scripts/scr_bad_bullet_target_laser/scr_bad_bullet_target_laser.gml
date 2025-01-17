// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bad_bullet_target_laser(){
	static players = ds_list_create();
	image_yscale = 0;
	var move_x = lengthdir_x(100,image_angle);
	var move_y = lengthdir_y(100,image_angle);
	x += move_x;
	y += move_y;
	var numof_players = collision_line_list(x,y,target_x,target_y,obj_player,0,1,players,0);
	if(numof_players > 0){
		for(var i=0;i<ds_list_size(players);i++){
			var player = ds_list_find_value(players,i);
			if(instance_exists(player)){
				if(player.player_number == 1){
					room_restart();
				}
			}
		}
	}
}