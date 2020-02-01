extends KinematicBody2D
var in_hands = false
var player_in_area = false
var move = Vector2()
const force_shoot = 40
var shooting = false

func _physics_process(delta):
	
	if in_hands == false and player_in_area == false  and player_singleton.with_object == false and shooting == false:
		
		move.y = + 200
		
		
	in_hands = player_singleton.object_in_hand 
	
	if  Input.is_action_just_pressed("ui_shoot") and shooting == false :
		if player_singleton.side_current == true :
			position.x -= force_shoot  
		if player_singleton.side_current == false :
			position.x += force_shoot
			
		shooting = true
		
	elif Input.is_action_just_released("ui_shoot"):
		shooting = false
	
		
	if   player_in_area == true  and player_singleton.with_object == true and shooting == false:
		global_position = player_singleton.pos_object 
		in_hands = true
		player_singleton.object_in_hand = in_hands
	elif  player_in_area == false and player_singleton.with_object == false:
		in_hands = false
		player_singleton.object_in_hand = in_hands
		
	move_and_slide(move)


func _on_Area2D_body_entered(body):
	if body.is_in_group("player") and player_singleton.object_in_hand == false  :
		player_in_area = true
		


func _on_Area2D_body_exited(body) :
	if body.is_in_group("player")and player_singleton.object_in_hand == false: 
		player_in_area = false
		
