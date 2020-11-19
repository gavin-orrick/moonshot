extends Area2D

export var minSpeed: float = 10
export var maxSpeed: float = 20
export var minRotation: float = -30
export var maxRotation: float = 30

var speed: float = 0
var rotationRate: float = 0

func _ready():
	speed = rand_range(minSpeed, maxSpeed)
	rotationRate = rand_range(minRotation, maxRotation)

func _physics_process(delta):
	rotation_degrees += rotationRate * delta
	position.y += speed * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
