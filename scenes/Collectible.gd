extends Area2D

signal gem_collected

func _on_Collectible_body_entered(body):
	if body.get_name() == "Player":
		Current.gems_collected += 1
		emit_signal("gem_collected")
		queue_free()

