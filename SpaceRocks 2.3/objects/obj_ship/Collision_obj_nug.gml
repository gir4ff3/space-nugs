if (!global.invincibility = 1){
	lives -= 1;

with(obj_game){
	alarm[1] = room_speed;
}
audio_play_sound(loose,1,false);
instance_destroy();

repeat(10){
	instance_create_layer(x,y,"Instances",obj_debree);
}
}