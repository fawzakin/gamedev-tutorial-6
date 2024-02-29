extends KinematicBody2D

const UP = Vector2(0, -1)

export var speed: int = 400
export var GRAVITY: int = 1200
export var jump_speed: int = -400

var velocity: Vector2 = Vector2()
var can_jump  = true

func get_input():
	velocity.x = 0
	if can_jump and Input.is_action_just_pressed("jump"):
		if not is_on_floor():
			can_jump = false
		velocity.y = jump_speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed
	if Input.is_action_pressed("restart"):
		Current.gems_collected = 0
		get_tree().change_scene("res://scenes/" + Current.current_level + ".tscn")

func get_level_scene():
	var level = get_tree().get_current_scene().get_name()
	if level.begins_with("Level"):
		Current.current_level = level
	
func _physics_process(_delta):
	velocity.y += _delta * GRAVITY
	get_input()
	get_level_scene()
	print(Current.gems_collected)
	if is_on_floor():
		can_jump = true
	velocity = move_and_slide(velocity, UP)


func _process(_delta):
	if velocity.y != 0:
		$Animator.play("Jump")
	elif velocity.x != 0:
		$Animator.play("Walk")
		if velocity.x > 0:
			$Sprite.flip_h = false
		else:
			$Sprite.flip_h = true
	else:
		$Animator.play("Idle")

func _on_Death_body_entered(body):
	if body.get_name() == "Player":
		 get_tree().change_scene(str("res://scenes/Death.tscn"))

func _on_WinRocket_body_entered(body):
	if body.get_name() == "Player":
		 get_tree().change_scene(str("res://scenes/Win.tscn"))
