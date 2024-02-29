extends Area2D

# This function is to prevent memory leaks for having too many fish
func _on_FishKiller_body_entered(body):
	if "Fish" in body.get_name():
		body.queue_free()
