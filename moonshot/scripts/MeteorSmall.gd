extends Area2D

export var minSpeed: float = 10
export var maxSpeed: float = 20

var speed: float = 0

func _ready():
	speed = rand_range(minSpeed, maxSpeed)
	
func _physics_process(delta):
	position.y += speed * delta
