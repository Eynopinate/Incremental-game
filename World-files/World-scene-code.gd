extends Node2D
@onready var timer: Timer = $Timer

signal Size_change
signal Player_stats_update 

@export var stuff_to_spawn: PackedScene
var test_var : int = 25 


# define 2 region of the square
var valid_spawn_pos = Rect2(Vector2(2.0, -1.0), Vector2(634.0, 354.0))
var invalid_spawn_pos = Rect2(Vector2(243.0, 182.0), Vector2(164.0, 93.0))

func _ready() -> void:
	var exe_path = OS.get_executable_path()
	print(exe_path)

func spawn_item() -> void:
	var random_position = get_valid_spawn_position()
	
	var stuff = stuff_to_spawn.instantiate()
	stuff.position = random_position
	add_child(stuff)

# checking if the position is in the invalid region
func get_valid_spawn_position()-> Vector2:
	while true:
		var random_x = randf_range(valid_spawn_pos.position.x , valid_spawn_pos.end.x)
		var random_y = randf_range(valid_spawn_pos.position.y , valid_spawn_pos.end.y)
		var position = Vector2(random_x , random_y)
		
		if not invalid_spawn_pos.has_point(position):
			return position # position found!
	return Vector2.ZERO


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		Size_change.emit(test_var)

func _on_timer_timeout() -> void:
	spawn_item()
