score += 10;
audio_play_sound(hurt,1,false);
instance_destroy();

with(other){
instance_destroy();

if(sprite_index == spr_nug_huge){
	repeat(2){
	var new_nug = instance_create_layer(x,y,"Instances",obj_nug);
	new_nug.sprite_index = spr_nug_med;
	}
} else if(sprite_index == spr_nug_med){
	repeat(2){
	var new_nug = instance_create_layer(x,y,"Instances",obj_nug);
	new_nug.sprite_index = spr_nug_small;
	}
	}
	repeat(10){
	instance_create_layer(x,y,"Instances",obj_debree);
	}
}