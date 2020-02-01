extends Area2D

export var emiter_value = {"signal1":false,"signal2":false,"signal3":false}
var it_is_key = true
var activate_engine = false
var it_is_in_area = false
var signal_emited = false   

func _ready(): 
	machine_singleton.emitter_value.sinal1 = emiter_value.signal1
	machine_singleton.emitter_value.sinal2 = emiter_value.signal2
	machine_singleton.emitter_value.sinal3 = emiter_value.signal3
func _process(delta):
	
	if Input.is_action_just_pressed("ui_accept"):
		if it_is_in_area == true :
			activate_engine = true
			emiter_signal()
		if it_is_in_area == false :
			activate_engine = false

	

func emiter_signal():
	
	machine_singleton.emitter_value.sinal1 = emiter_value.signal1
	machine_singleton.emitter_value.sinal2 = emiter_value.signal2
	machine_singleton.emitter_value.sinal3 = emiter_value.signal3
	if activate_engine == true :
		if emiter_value.signal1 == true  and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				machine_singleton.key_in_hand -= 1
		
		if emiter_value.signal2 ==true and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				machine_singleton.key_in_hand -= 1
		
		
		if emiter_value.signal3 == true and machine_singleton.key_in_hand >= 1:
			if activate_engine == true :
				signal_emited = true
				machine_singleton.emited_signal_engine = signal_emited
				machine_singleton.key_in_hand -= 1

func _on_engine_body_entered(body):
	print(emiter_value)
	if body.is_in_group("player"):
		it_is_in_area = true
		machine_singleton.emitter_value.sinal1 = emiter_value.signal1
		machine_singleton.emitter_value.sinal2 = emiter_value.signal2
		machine_singleton.emitter_value.sinal3 = emiter_value.signal3


func _on_engine_body_exited(body):
	if body.is_in_group("player"):
		it_is_in_area = false
		signal_emited = false
