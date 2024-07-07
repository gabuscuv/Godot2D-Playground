extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# This Works
func _on_some_stuff_area_entered(body:Area2D):
	if body.get_parent().has_meta('bullet'):
		queue_free();
	print("hi!")

# It doesn't
func _on_some_stuff_body_entered(body:Node2D):
	if body.has_meta('bullet'):
		queue_free();
	print("hi!")
