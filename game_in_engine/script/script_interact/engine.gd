extends Area2D

export var emiter_value = {"signal1":false,"signal2":false,"signal3":false,"signal4":false,"signal5":false,"signal6":false}
var it_is_key = true
var activate_engine = false
var it_is_in_area = false
var signal_emited = false   


func _process(delta):
	
	if Input.is_action_just_pressed("ui_accept"):
		if it_is_in_area == true :
			activate_engine = true
			
			machine_singleton.activate_engine = activate_engine
			emiter_signal()
			
			
	if Input.is_action_just_released("ui_accept"):
		activate_engine = false
		machine_singleton.activate_engine = activate_engine

func emiter_signal():
	

	if activate_engine == true :
		
		if emiter_value.signal1 == true  and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				
		
		if emiter_value.signal2 ==true and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				
		
		
		if emiter_value.signal3 == true and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				
				
		if emiter_value.signal4 == true and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				
				
		if emiter_value.signal5 == true and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				
		
		if emiter_value.signal6 == true and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
		machine_singleton.key_in_hand -= 1
				
				
func _on_engine_body_entered(body):
	
	
	if body.is_in_group("player"):
		it_is_in_area = true
		machine_singleton.emitter_value.sinal1 = emiter_value.signal1
		machine_singleton.emitter_value.sinal2 = emiter_value.signal2
		machine_singleton.emitter_value.sinal3 = emiter_value.signal3
		machine_singleton.emitter_value.sinal4 = emiter_value.signal4
		machine_singleton.emitter_value.sinal5 = emiter_value.signal5
		machine_singleton.emitter_value.sinal6 = emiter_value.signal6

func _on_engine_body_exited(body):
	if body.is_in_group("player"):
		it_is_in_area = false
		signal_emited = false

