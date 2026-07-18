extends Area2D

@export var Bullet_stats : Norm_Bullets_stats

var direction : Vector2


func get_player():
	var player = get_tree().get_first_node_in_group("Player")
	if player : 
		return player

func _physics_process(delta: float) -> void:
	var player_pos = get_player().global_position
	if player_pos : 
		look_at(player_pos)
		direction = global_position.direction_to(player_pos)
	position += direction * Bullet_stats.speed * delta
	


func _on_body_entered(body: Node2D) -> void:
	print("body detected")
	queue_free()
