extends Area2D

var speed = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= transform.y * speed * delta
	if position.y <= 0:
		queue_free()
		GlobalVars.bullet_count += 1
		print("Bullet replaced")

func OnCollisionEnter(body):
	GlobalVars.bullet_count = 1
	GlobalVars.score += 10
	print("Bullet replaced")
	print("Score:", GlobalVars.score)
	body.queue_free()
	queue_free()
