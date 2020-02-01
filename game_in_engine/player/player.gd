extends KinematicBody2D

var move = Vector2()
export var speed = 150
const gravity = 20
var cont_object = 0
var with_object = false
var in_area = false


func _physics_process(delta):
	move.y += gravity
	player_singleton.with_object = with_object
	if Input.is_action_pressed("ui_graby") and in_area == true:
		player_singleton.pos_object = $position_objects.global_position
		player_singleton.with_object = true
	if Input.is_action_just_released("ui_graby") and in_area == false:
		player_singleton.with_object = false
		
		
	if Input.is_action_pressed("ui_left"):
		move.x =- speed
	elif Input.is_action_pressed("ui_right"):
		move.x =+ speed
	else:
		move.x = 0 
	move_and_slide(move)


func _on_area_hand_body_entered(body):
	if body.is_in_group("block") and with_object == false :
		in_area = true
		
		
func _on_area_hand_body_exited(body):
	if body.is_in_group("block") :
		in_area = false
		



func _on_delay_graby_timeout(body):
	pass
