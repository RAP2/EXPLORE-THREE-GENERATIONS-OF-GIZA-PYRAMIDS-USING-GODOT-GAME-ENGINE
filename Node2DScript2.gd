extends Node2D

var col = Color (112,128,144) #slategrey

func _ready():
	_draw()
	
	pass 

func _draw():
	draw_line(Vector2(1,20), Vector2(1,100), col)

	
	draw_line(Vector2(1391,20), Vector2(1391,100), col)

	
	draw_line(Vector2(1,20), Vector2(1390,20), col)

	
	draw_line(Vector2(1,100), Vector2(1390,100), col)

