extends Node2D
@export var move_speed:float = 250


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	position.y += move_speed * delta


func _on_area_2d_area_entered(area):
	PlayerRessource.score += 10
	queue_free()
