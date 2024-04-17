extends Control

export var scene_to_load: String

func _on_LinkButton_pressed():
	get_tree().change_scene(str("res://scenes/" + scene_to_load + ".tscn"))

func _on_LinkButton2_pressed():
		get_tree().change_scene(str("res://scenes/MainMenu.tscn"))
