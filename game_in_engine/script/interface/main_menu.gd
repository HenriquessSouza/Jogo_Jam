extends Control



func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		$CanvasLayer/butoncontainer/credits/Panel.visible = false
		
func _ready():
	$"CanvasLayer/butoncontainer/play_game ". grab_focus()

func _on_play_game__pressed():
	get_tree().change_scene("res://levels/1.tscn")
	



func _on_credits_pressed():
	$CanvasLayer/butoncontainer/credits/Panel.visible = true
	$CanvasLayer/text_info.visible = true 
	
func _on_quit_pressed():
	get_tree().quit()
