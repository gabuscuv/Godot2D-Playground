extends Node2D
@export var projectile: PackedScene
var speed = 40;
var velocity = Vector2.ZERO;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = Vector2.ZERO;
	
	if Input.is_action_pressed("Fire"):
		var _projectile = projectile.instantiate()
		add_child(_projectile);
	if Input.is_action_pressed("move_up"):
		velocity.y-=speed;
	if Input.is_action_pressed("move_down"):
		velocity.y+=speed;
	if Input.is_action_pressed("move_left"):
		velocity.x-=speed;
	if Input.is_action_pressed("move_right"):
		velocity.x+=speed;

	position += velocity * delta
	
