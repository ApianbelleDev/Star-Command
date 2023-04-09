extends Area2D

var speed = 50

@onready var screenSize = get_viewport().get_visible_rect().size

var rng = RandomNumberGenerator.new()
var rndX = rng.randf_range(0, 1180)
var rndY = rng.randi_range(0, 480)

func _ready():
	position.x = rndX
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.y * speed * delta
	


func OnCollisionEnter(body):
	body.queue_free()
	queue_free()
