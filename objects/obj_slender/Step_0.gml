var _hor=clamp(target_x-x,-1,1)
var _ver=clamp(target_y-y,-1,1)
move_and_collide(_hor,_ver,tileset=layer_tilemap_get_id("Tiles_2"))