extends Node2D
@export var x_bounds:Vector2 = Vector2(-500, 500)
@export var y_position:float = 1500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var ennemyIndex = 0
	for i in range(2, 5):
		ennemyIndex += 1
		var ennemy = preload("res://Scenes/ennemi.tscn").instantiate()
		add_child(ennemy)
		ennemy.global_position = Vector2(randf_range(x_bounds.x, x_bounds.y)+ i * 500, y_position)
