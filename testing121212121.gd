extends Node2D

# Reference to the scene or item you want to spawn
@export var item_to_spawn: PackedScene

# Define the full yellow rectangle (Position and Size)
var yellow_rect = Rect2(Vector2(100, 100), Vector2(800, 500))

# Define the inner red rectangle (Position and Size)
var red_rect = Rect2(Vector2(350, 250), Vector2(300, 200))

func _ready() -> void:
	# Example: Spawn 10 items
	for i in range(10):
		spawn_item()

func spawn_item() -> void:
	var random_position = get_random_position_in_yellow()
	
	var item = item_to_spawn.instantiate()
	item.position = random_position
	add_child(item)

func get_random_position_in_yellow() -> Vector2:
	while true:
		# 1. Pick a random point anywhere inside the large yellow box
		var random_x = randf_range(yellow_rect.position.x, yellow_rect.end.x)
		var random_y = randf_range(yellow_rect.position.y, yellow_rect.end.y)
		var point = Vector2(random_x, random_y)
		
		# 2. Check if the point is NOT inside the red box
		if not red_rect.has_point(point):
			return point # Found a valid spot!
			
	return Vector2.ZERO # Fallback
