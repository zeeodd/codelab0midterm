/*
	Returns: a speed with which to move from initial pos to final pos over a given time
	
	Return Type: float

	Parameters: [0] inital x	- the initial xpos of the obj
				[1] initial y	- the initial ypos of the obj
				[2] final x		- the final xpos of the obj to move toward
				[3] final y		- the final ypos of the obj to move toward
				[4] time		- the time over which to move from inital to final pos
*/

var distance = sqrt( power(argument2 - argument0, 2) + power(argument3 - argument1, 2) );

return distance / room_speed / argument4;