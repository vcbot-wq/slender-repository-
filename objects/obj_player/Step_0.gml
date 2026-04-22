ysp+=0.1
xsp=0
if keyboard_check(vk_left) {
	xsp= -1.5
}
if keyboard_check(vk_right) {
	xsp= 1.5
}
if place_meeting(x,y+1,[tileset,obj_tempPlatform]){
	ysp=0
	if keyboard_check(vk_up) {
	 ysp=-5	
	}
}
move_and_collide(xsp,ysp,[tileset,obj_tempPlatform])
if keyboard_check(vk_shift) { pages=3
	}
if pages>2 { 
	room_goto_next()
	pages=0
	}
if y>1000 {room_restart()}