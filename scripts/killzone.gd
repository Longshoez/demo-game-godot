extends Area2D

@onready var timer = $Timer

# the body in the method refers to the body who enters the killzone area
func _on_body_entered(body):
	print('die event')
	Engine.time_scale = 0.5
	body.get_node('CollisionShape2D').queue_free()
	timer.start()
	
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
