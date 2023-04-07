extends Timer

@export var Comet: PackedScene


func spawnComet():
	var c = Comet.instantiate()
	owner.add_child(c)

func _on_timer_timeout():
	spawnComet()
	print("Comet spawned")
