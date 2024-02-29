extends Area2D

func _on_Collectible_body_entered(body):
	if body.get_name() == "Player":
		Current.gems_collected += 1
		queue_free()
