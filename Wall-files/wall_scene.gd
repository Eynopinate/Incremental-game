extends StaticBody2D

func _on_world_size_change(test_size) -> void:
	
	var multiplier = 1.0 + (test_size / 100.0)
	if test_size != null:
		scale *= multiplier
