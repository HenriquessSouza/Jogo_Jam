extends Node2D

export var name_animation = ""

func check_signal_emited():
	
	
	if machine_singleton.emitter_value.sinal1 == true and machine_singleton.emited_signal_engine == true :
		$AnimationPlayer.play(""+str(name_animation)+"")
		print(1)
	if machine_singleton.emitter_value.sinal2 == true and machine_singleton.emited_signal_engine == true :
		$AnimationPlayer.play(""+str(name_animation)+"")
		print(2)
	if machine_singleton.emitter_value.sinal3 == true  and machine_singleton.emited_signal_engine == true:
		$AnimationPlayer.play(""+str(name_animation)+"")
		print(3)


func _on_check_status_timeout():
	check_signal_emited()
