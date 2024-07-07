extends Node2D

var speed= 750;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += transform.x * speed * delta;

func _on_Bullet_body_entered(_body: Node2D):
	queue_free()
