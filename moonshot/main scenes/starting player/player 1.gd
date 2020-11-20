extends Area2D

var speed: float = 100
var vel := Vector2(0, 0)

func _process(delta):
	vel.x= 0
	vel.y= 0
	pass
func _physics_process(delta):
	pass
	if Input.is_action_pressed("Move_left"):
		vel.x = -speed
	elif Input.is_action_pressed("Move_right"):
		vel.x = speed
	if Input.is_action_pressed("Move_up"):
		vel.y = -speed
	elif Input.is_action_pressed("Move_down"):
		vel.y = speed 


	position += vel * delta
	
	var viewrect := get_viewport_rect()

	position.x = clamp(position.x,0,viewrect.size.x)
	position.y = clamp(position.y, 0 ,viewrect.size.y)
