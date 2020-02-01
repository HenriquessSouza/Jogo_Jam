extends Area2D



func _on_key_body_entered(body):
	if body.is_in_group("player"):
		machine_singleton.key_in_hand += 1
		print("estoro")
		queue_free()
