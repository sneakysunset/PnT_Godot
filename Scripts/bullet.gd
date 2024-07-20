extends Node2D
@export var bullet_speed : float = -1000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	#var collision = move_and_collide(-10000 * delta)
	position.y += bullet_speed * delta


func _on_area_2d_area_entered(area):
	queue_free()
