extends Control



func _on_Timer_timeout():
	check_status_counter_key()




func check_status_counter_key():
	$Label.text = str(machine_singleton.key_in_hand)
	if machine_singleton.key_in_hand <1:
		$".".visible = false
	else :
		$".".visible = true
