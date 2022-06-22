extends Node2D

var col = Color (0,0,0) #black

func _ready():
	_draw()
	
	pass 

func _draw():
	draw_line(Vector2(1,20), Vector2(1,100), col)
	draw_line(Vector2(2,20), Vector2(2,100), col)
	draw_line(Vector2(3,20), Vector2(3,100), col)
	
	draw_line(Vector2(1391,20), Vector2(1391,100), col)
	draw_line(Vector2(1392,20), Vector2(1392,100), col)
	draw_line(Vector2(1393,20), Vector2(1393,100), col)
	
	draw_line(Vector2(1,20), Vector2(1390,20), col)
	draw_line(Vector2(1,21), Vector2(1390,21), col)
	draw_line(Vector2(1,22), Vector2(1390,22), col)
	
	draw_line(Vector2(1,100), Vector2(1390,100), col)
	draw_line(Vector2(1,99), Vector2(1390,99), col)
	draw_line(Vector2(1,98), Vector2(1390,98), col)
