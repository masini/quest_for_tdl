/// @description Resetta le coordinate in caso di collisione
// You can write your code in this editor
if( tile_place_meeting(x, y, "Tiles_Collision") ) {
	x = before_x
	y = before_y
}

