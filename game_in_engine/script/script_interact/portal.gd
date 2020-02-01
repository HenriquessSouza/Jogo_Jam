extends Area2D

export var next_scene = 0




func _on_portal_body_entered(body):
	var path = "res://levels/"+str(next_scene)+".tscn"
	if body.is_in_group("player"):
		machine_singleton.emitter_value.sinal1= false
		machine_singleton.emitter_value.sinal2 = false
		machine_singleton.emitter_value.sinal3= false
		machine_singleton.emitter_value.sinal4 = false
		machine_singleton.emitter_value.sinal5=false
		machine_singleton.emitter_value.sinal6 = false
		get_tree().change_scene(path)
