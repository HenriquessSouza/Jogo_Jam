extends Node2D
export var receiver_channel = 0 
export var name_animation = ""
export var animation_pause = false
var pauseanimation = false

func check_signal_emited():
	
	
	if machine_singleton.emitter_value.sinal1 == true and machine_singleton.emited_signal_engine == true  and receiver_channel == 1 and pauseanimation == false:
		$AnimationPlayer.current_animation =""+str(name_animation)+""
		if animation_pause == true:
			pauseanimation = true
		else:
			pauseanimation = false
	if machine_singleton.emitter_value.sinal2 == true and machine_singleton.emited_signal_engine == true and receiver_channel == 2 and pauseanimation == false:
		$AnimationPlayer2.current_animation =""+str(name_animation)+""
		if animation_pause == true:
			pauseanimation = true
		else:
			pauseanimation = false
	if machine_singleton.emitter_value.sinal3 == true  and machine_singleton.emited_signal_engine == true and receiver_channel == 3 and pauseanimation == false:
		$AnimationPlayer3.current_animation =""+str(name_animation)+""
		if animation_pause == true:
			pauseanimation = true
		else:
			pauseanimation = false
		

func _on_check_status_timeout():
	check_signal_emited()
