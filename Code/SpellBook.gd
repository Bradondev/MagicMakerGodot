class_name SpellBook extends Node3D


@export var Name = "Fire book"
@export var CurrentSpell: int

@export var SpellsInBook : Array[SpellBookPage]


func _process(delta):
	if Input.is_action_just_pressed("LeftClick"):
		print(SpellsInBook[CurrentSpell])
