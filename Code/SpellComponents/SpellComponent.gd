class_name SpellComponent extends Node3D
@export_enum("Size","Amount", "Shape","Element","Damage","OnHitEffect","SpawnArea","TypeOfSpell","Movement","CastTime") var TypeOfSpellProperty: String
@export_range(0, 10,1) var LevelOfSpellProperty :int


@export_group("My Properties")
@export_range(0, 100,1) var Amount = 0
@export var  Size :  Vector3i
@export var Shape: PackedScene
@export_enum("Air", "Fire", "Water","Earth","Light","Dark", "Null") var Element: String
@export_range(0, 1000,1) var Damage= 0
@export var OnHitEffect : PackedScene
@export var SpawnArea: Vector3i
@export_enum("Projectile", "SelfTarget") var  TypeOfSpell 
@export_range(0, 100,1) var Speed = 0
@export_range(0, 100,1) var CastTime = 0





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
