/// @description Position Meeting for Tile Collision
/// @param x
/// @param y
/// @param tile layer

var _x_offset, _y_offset, _tile_layer, _meeting;
_x_offset = argument0 - x;
_y_offset = argument1 - y;
_tile_layer = layer_tilemap_get_id(argument2);

_meeting = tilemap_get_at_pixel(_tile_layer, bbox_left + _x_offset, bbox_top + _y_offset) ||
           tilemap_get_at_pixel(_tile_layer, bbox_right + _x_offset, bbox_top + _y_offset) ||
           tilemap_get_at_pixel(_tile_layer, bbox_left + _x_offset, bbox_bottom + _y_offset) ||
           tilemap_get_at_pixel(_tile_layer, bbox_right + _x_offset, bbox_bottom + _y_offset);

return _meeting;