extends Area2D

var plbullet := preload("res://scenes/Bullet.tscn")

onready var animatedsprite := $animatedsprite
onready var firingpositions := $firingpositions

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
	if Input.is_action_pressed("Shoot"):
		for child in firingpositions.get_children():
			var bullet := plbullet.instance()
			bullet.global_position = child.global_position
			get_tree().current_scene.add_child(bullet)

	position += vel * delta
	
	var viewrect := get_viewport_rect()

	position.x = clamp(position.x,0,viewrect.size.x)
	position.y = clamp(position.y, 0 ,viewrect.size.y)
