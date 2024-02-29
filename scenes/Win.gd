extends Node2D

func _process(_delta):
	if Current.gems_collected == 4:
		$Label.text = "Gems Collected: " + str(Current.gems_collected) + "/4 (Awesome!)"
	else:
		$Label.text = "Gems Collected: " + str(Current.gems_collected) + "/4"
	if Input.is_action_pressed("restart"):
		get_tree().change_scene("res://scenes/" + Current.current_level + ".tscn")
