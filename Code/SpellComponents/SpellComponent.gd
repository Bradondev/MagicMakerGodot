class_name SpellComponent extends Node3D
@export_enum("Size","Type of Amount","Element","Damage","OnHitEffect","SpawnArea","FireRate","CastType","TypeOfSpell","Movement","CastTime","Type of Movement") var TypeOfSpellProperty: String
@export_range(0, 10,1) var LevelOfSpellProperty :int

#edit amount when Type of Amount is the TypeOfSpellProperty
@export_group("My Properties")

@export_enum("Air", "Fire", "Water","Earth","Light","Dark", "Null") var Element: String
@export_range(0, 1000,1) var Damage= 0
@export var OnHitEffect : PackedScene
@export_enum("Projectile", "SelfTarget") var  TypeOfSpell 

var grav = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
