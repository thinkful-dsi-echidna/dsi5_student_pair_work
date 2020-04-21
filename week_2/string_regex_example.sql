SELECT model, trans, 
	LEFT(trans, 4) AS left_extract, 
	RIGHT(trans, 5) AS right_extract, 
	-- match any number of characters up to either whitespace or a (
	-- ?= inside of () is looking ahead for the whitespace or ( but not including it
	SUBSTRING(trans, '^\S+(?=[\( ])') AS left_pattern, 
	-- match either #-spd or anything enclosed by () but don't include the ()
	-- the ?: inside the () is helping it match one or the other independently
	SUBSTRING(trans, '(?:[0-9]-spd)|(?:(?<=\()\S+(?=\)))') AS right_pattern 
FROM vehicles
LIMIT 200;