extends Area2D

export var next_scene = 0




func _on_portal_body_entered(body):
	var path = "res://levels/"+str(next_scene)+".tscn"
	if body.is_in_group("player"):
		get_tree().change_scene(path)
