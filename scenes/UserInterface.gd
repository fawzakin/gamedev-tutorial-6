extends CanvasLayer

func _ready():
	$Label.text = "0/4"

func _on_Collectible_gem_collected():
	$Label.text = str(Current.gems_collected) + "/4"
	pass # Replace with function body.


func _on_Collectible2_gem_collected():
	$Label.text = str(Current.gems_collected) + "/4"
	pass # Replace with function body.


func _on_Collectible3_gem_collected():
	$Label.text = str(Current.gems_collected) + "/4"
	pass # Replace with function body.


func _on_Collectible4_gem_collected():
	$Label.text = str(Current.gems_collected) + "/4"
	pass # Replace with function body.
