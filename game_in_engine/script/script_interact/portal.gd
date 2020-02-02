extends Area2D

export var next_scene = 0




func _on_portal_body_entered(body):
	
	if body.is_in_group("player"):
		var path = "res://levels/"+str(next_scene)+".tscn"
		machine_singleton.emitter_value.sinal1= false
		machine_singleton.emitter_value.sinal2 = false
		machine_singleton.emitter_value.sinal3= false
		machine_singleton.emitter_value.sinal4 = false
		machine_singleton.emitter_value.sinal5=false
		machine_singleton.emitter_value.sinal6 = false
		get_tree().change_scene(path)
