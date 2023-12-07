extends Area3D




func _on_body_entered(body):
	get_parent().queue_free()
	pass # Replace with function body.
