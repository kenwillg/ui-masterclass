extends Control

func _on_button_pressed():
	# Tell our global manager to switch to the blackmarket scene
	SceneManager.switch_scene("res://src/blackmarket/blackmarket.tscn")
