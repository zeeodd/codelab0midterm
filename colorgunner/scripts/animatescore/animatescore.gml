/*
	Returns: an animation for the attached object
	
	Return Type: float

	Parameters: [0] obj	- the object to be animated
*/

var a = argument0;

if (!a.animdone) {
	a.visible = true;
	if (point_distance(a.x, a.y, a.x, a.final_y) <= 2.5) {
		a.x = a.x
		a.y = final_y;
		a.speed = 0;
		a.animdone = true;
		instance_destroy(a);
	} else {
		move_towards_point(a.x, final_y, 0.5);
		image_alpha -= 0.02;
	}
}