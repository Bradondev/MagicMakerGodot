class_name CastTypeComponent extends SpellComponent
@export_enum("Single Click","While Hold","Cast Time Hold","Hold Onto spell") var CastType: String
@export_range(0, 100,1) var CastTime = 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
