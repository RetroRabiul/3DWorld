extends Node3D

var my_value = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
func _on_area_3d_body_entered(body):
	if body.is_in_group("player"):
		Global_signal.emit_signal("change_score", my_value)
		queue_free()
		
