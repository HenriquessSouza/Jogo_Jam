extends Node2D



func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "play_apresentation":
		get_tree().change_scene("res://scenes_globais/main_menu.tscn")
