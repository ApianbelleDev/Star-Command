extends Timer

@export var Comet: PackedScene

func _ready():
	spawnComet()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func spawnComet():
	var c = Comet.instantiate()
	owner.add_child(c)



func _on_timer_timeout():
	spawnComet()
	print("Comet spawned")
