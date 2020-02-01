extends KinematicBody2D

var move = Vector2()
export var speed = 150
const gravity = 250
var cont_object = 0
var with_object = false
var in_area = false
var in_plataform = false



func _physics_process(delta):
	
	if in_plataform == false and !is_on_floor() :
		move.y =+gravity
	player_singleton.with_object = with_object
	
	if Input.is_action_pressed("ui_graby") and in_area == true:
		player_singleton.pos_object = $position_objects.global_position
		player_singleton.with_object = true
		$animationplayer.play("graby")
	
	
	if Input.is_action_just_released("ui_graby") and in_area == false:
		player_singleton.with_object = false 
		
		
		
	if Input.is_action_pressed("ui_left"):
		move.x =- speed
		$animationplayer.play("run")
		$animationplayer.flip_h = true
		
	elif Input.is_action_pressed("ui_right"):
		move.x =+ speed
		$animationplayer.play("run")
		$animationplayer.flip_h = false
	
	else:
		move.x = 0 
		$animationplayer.play("idlle")
	move_and_slide(move)

func restart_position_checkpoint():
	position = player_singleton.pos_checkpoint
	
	
func _on_area_hand_body_entered(body):
	if body.is_in_group("block") and with_object == false :
		in_area = true
		
		
func _on_area_hand_body_exited(body):
	if body.is_in_group("block") :
		in_area = false
		



func _on_delay_graby_timeout(body):
	pass


func _on_foot_area_body_entered(body):
	if body.is_in_group("plataform"):
		in_plataform = true
		


func _on_foot_area_body_exited(body):
	if body.is_in_group("plataform"):
		in_plataform = false


func _on_body_area_body_entered(body):
	if body.is_in_group("trap"):
		$animationplayer.play("death")

func _on_animationplayer_animation_finished(anim_name):
	if anim_name == "death":
		restart_position_checkpoint()
