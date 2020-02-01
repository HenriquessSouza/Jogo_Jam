extends Node2D
export var receiver_channel = 0 
export var name_animation = ""
export var animation_pause = false
var pauseanimation = {"chanel1":false,"chanel2":false,"chanel3":false,"chanel4":false,"chanel5":false,"chanel6":false}
var stop_check = false

func check_signal_emited():
	
	
	if machine_singleton.emitter_value.sinal1 == true and machine_singleton.emited_signal_engine == true  and receiver_channel == 1 and pauseanimation.chanel1 == false:
		$AnimationPlayer.current_animation =""+str(name_animation)+""
		#if animation_pause == true:
		pauseanimation.chanel1 = true
		#else:
		#	pauseanimation = false
	if machine_singleton.emitter_value.sinal2 == true and machine_singleton.emited_signal_engine == true and receiver_channel == 2 and pauseanimation.chanel2 == false:
		$AnimationPlayer.current_animation =""+str(name_animation)+""
		pauseanimation.chanel2 = true
	if machine_singleton.emitter_value.sinal3 == true  and machine_singleton.emited_signal_engine == true and receiver_channel == 3 and pauseanimation.chanel3 == false:
		$AnimationPlayer.current_animation =""+str(name_animation)+""
		pauseanimation.chanel3 = true
		
	if machine_singleton.emitter_value.sinal4 == true  and machine_singleton.emited_signal_engine == true and receiver_channel == 4 and pauseanimation.chanel4 == false:
		$AnimationPlayer.current_animation =""+str(name_animation)+""
		pauseanimation.chanel4 = true
		
	if machine_singleton.emitter_value.sinal5 == true  and machine_singleton.emited_signal_engine == true and receiver_channel == 5 and pauseanimation.chanel5 == false:
		$AnimationPlayer.current_animation =""+str(name_animation)+""
		pauseanimation.chanel5 = true
	if machine_singleton.emitter_value.sinal6 == true  and machine_singleton.emited_signal_engine == true and receiver_channel == 6 and pauseanimation.chanel6 == false:
		$AnimationPlayer.current_animation =""+str(name_animation)+""
		pauseanimation.chanel6 = true
		
func _on_check_status_timeout():
	check_signal_emited()
