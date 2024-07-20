extends Node2D

@export var move_speed:float = 5
@export var acceleration_time:float = 5
@export var deceleration_time:float = 3
var acceleration_interp:float = 0
@export var bounds:Vector2 = Vector2(-5000, 5000)
const SCENE_PATH = "res://Scenes/bullet.tscn"
# Start
func _ready():
	pass # Replace with function body.


# Update
func _process(delta):
	pass

# Fixed Update
func _physics_process(delta):
	MovePlayer(delta)
	Shoot()

# Handle Movement
func MovePlayer(delta):
	var axis_input = Input.get_axis("Move Left","Move Right")
	if 0 != axis_input:
		acceleration_interp += delta / acceleration_time
	else:
		acceleration_interp -= delta / deceleration_time
	acceleration_interp = clamp(acceleration_interp, 0, 1)
	var move = axis_input * delta * move_speed * acceleration_interp
	position.x += move
	position.x = clamp(position.x, bounds.x, bounds.y)

# Handle Shooting
func Shoot():
	if Input.is_action_just_pressed("Shoot"):
		var bullet_instance =preload(SCENE_PATH).instantiate()
		bullet_instance.position = global_position
		get_tree().root.add_child(bullet_instance)
