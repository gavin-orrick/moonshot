extends Area2D

var speed: float = 100
var vel := Vector2(0, 0)

func _process(delta):
	pass

func _physics_process(delta):
	pass
	if Input.is_action_pressed("move_left"):
		vel.x = -speed
	elif Input.is_action_pressed("Move_right"):
		vel.x = speed
	if Input.is_action_pressed("Move_down"):
		vel.y = -speed 
	elif Input.is_action_pressed("Move_up"):
		vel.y = speed

