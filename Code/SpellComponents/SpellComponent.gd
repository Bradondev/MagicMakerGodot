class_name SpellComponent extends Node3D
@export_enum("Size","Type of Amount","Element","Damage","OnHitEffect","SpawnArea","FireRate","CastType","TypeOfSpell","Movement","CastTime") var TypeOfSpellProperty: String
@export_range(0, 10,1) var LevelOfSpellProperty :int

#edit amount when Type of Amount is the TypeOfSpellProperty
@export_group("My Properties")
@export_range(0, 100,1) var Amount = 0
@export_range(0, 10,1) var Size = 0
@export_enum("Air", "Fire", "Water","Earth","Light","Dark", "Null") var Element: String
@export_range(0, 1000,1) var Damage= 0
@export var OnHitEffect : PackedScene
@export var SpawnArea = Vector3(0,0,0) # "Random in a range , In a line , In a grid , Looked at point,Above Looked at point
@export_enum("Projectile", "SelfTarget") var  TypeOfSpell 
@export_range(0, 100,1) var Speed = 0
@export_range(0, 100,1) var CastTime = 0.1
@export var FireRate :float = 0
@export_enum("Single Click","While Hold","Cast Time Hold","Hold Onto spell") var CastType: String
@export_enum("All at once","One by one")var TypeOfAmount :String



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
