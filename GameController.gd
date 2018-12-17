extends Node2D

var do_I_draw = false
var center
var test_radius = 80
var test_color = Color(255, 0, 255)

func _ready():
	
	pass

func _input(event):
	
	if event.is_action_pressed("ui_left_mouse"):
		
		do_I_draw = true
		center = get_viewport().get_mouse_position()
		update()
		
	
	pass

func _draw():
	
	if (do_I_draw == true):
		
		draw_circle(center, test_radius, test_color)
		do_I_draw = false
		
	
	pass
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
