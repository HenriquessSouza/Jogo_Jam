extends Node2D



func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		$AnimationPlayer.play("navedecolando ")
		$player.visible = false


func _on_Button_pressed():
	
	get_tree().change_scene("res://scenes_globais/main_menu.tscn")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "navedecolando ":
		$CanvasLayer/Panel.visible = true
		$CanvasLayer/Panel/Button.grab_focus()
