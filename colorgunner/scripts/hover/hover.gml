/*
	Returns: a speed with which to move from initial pos to final pos over a given time
	
	Return Type: float

	Parameters: [0] init pos	- the initial pos (could be x or y) of the obj
				[1] end pos		- the final pos (could be x or y) of the obj
				[2] duration	- the duration of the movement
				[3] offset		- the duration of the "slide" effect
				
	SOURCE: https://pastebin.com/zD1asN3v
*/

a4 = (argument1 - argument0) * 0.5;
return argument0 + a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * a4;