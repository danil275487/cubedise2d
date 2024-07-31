extends Control



func _on_quit_pressed():
	get_tree().quit()


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://levels/1.tscn")
