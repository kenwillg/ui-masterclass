# SceneManager.gd
extends Node

# This will hold the main screen of our game
var current_scene = null

func _ready():
	# Get the main viewport/window of the game
	var root = get_tree().root
	# Get the currently running scene (which will be our main desktop)
	current_scene = root.get_child(root.get_child_count() - 1)

# This is the magic function we will call from our buttons
func switch_scene(new_scene_path):
	# Make sure the old scene is gone
	current_scene.queue_free()

	# Load the new scene file from its path
	var scene_to_load = load(new_scene_path)

	# Create an instance of the scene
	current_scene = scene_to_load.instantiate()

	# Add the new scene to the game window
	get_tree().root.add_child(current_scene)
