extends Node

func get_input():
	if Input.is_action_just_pressed("start"):
		$Border.show()
		$psText.hide()
func _on_play_button_button_down():
	get_tree().change_scene_to_file("res://Scenes/gameplay.tscn")

func _process(_delta):
	get_input();
