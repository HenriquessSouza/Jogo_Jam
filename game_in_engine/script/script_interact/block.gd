extends KinematicBody2D
var in_hands = false
var player_in_area = false
var move = Vector2()


func _physics_process(delta):
	print(in_hands)
	in_hands = player_singleton.object_in_hand 
	if in_hands == false and player_in_area == false :
		move.y = + 60
		
	if   player_in_area == true:
		global_position = player_singleton.pos_object 
		in_hands = true
		player_singleton.object_in_hand = in_hands
	else:
		in_hands = false
		player_singleton.object_in_hand = in_hands
	move_and_slide(move)


func _on_Area2D_body_entered(body):
	if body.is_in_group("player") and player_singleton.object_in_hand == false:
		player_in_area = true
		


func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		player_in_area = false
		
