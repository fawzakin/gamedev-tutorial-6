extends Node2D

func _process(_delta):
	if Input.is_action_pressed("restart"):
		Current.gems_collected = 0
		get_tree().change_scene("res://scenes/" + Current.current_level + ".tscn")
