/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 300B9A1E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(x <= 0 || x >= room_width - sprite_width){$(13_10)	hspeed = -hspeed;$(13_10)}$(13_10)$(13_10)if(y <= 0){$(13_10)	vspeed = -vspeed;$(13_10)}$(13_10)if(y >= room_height){$(13_10)	x = room_width/2;$(13_10)	y = room_height/2;$(13_10)	hspeed = 4;$(13_10)	vspeed = -4;$(13_10)}"
/// @description Execute Code
if(x <= 0 || x >= room_width - sprite_width){
	hspeed = -hspeed;
}

if(y <= 0){
	vspeed = -vspeed;
}
if(y >= room_height){
	x = room_width/2;
	y = room_height/2;
	hspeed = 4;
	vspeed = -4;
}