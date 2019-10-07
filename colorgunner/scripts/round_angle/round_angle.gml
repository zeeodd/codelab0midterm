/*
	Returns: a rounded angle that's a multiple of 22.5 deg
	
	Return Type: float

	Parameters: [0] angle	- the initial angle to be rounded
*/

return ceil((argument[0] - 22.5) / 22.5 ) * 22.5 + 22.5 + 90;