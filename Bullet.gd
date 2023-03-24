extends Area2D

var speed = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= transform.y * speed * delta


func OnCollisionEnter(body):
	GlobalVars.bullet_count += 1
	print("Bullet replaced")
	body.queue_free()
	queue_free()
