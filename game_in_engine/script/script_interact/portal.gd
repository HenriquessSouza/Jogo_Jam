extends Area2D
export var next_scene = 0




func _on_portal_body_entered(body):
	
	if body.is_ingroup("player"):
		get_tree().change_scene("res://levels/"+str(next_scene)+".tscn")
