class_name Projectile extends Node3D

@onready var ProjectileMesh = $MeshInstance3D
var CanMove = false
var grav = 0


@export_enum("bullet", "Ball","Wall","Area") var TypeOfProjectile: String


@export_category("Spell Stats Level")

@export_range(0, 10,1) var DamageLevel
@export_range(0, 10,1) var SpeedLevel

@export_category("Spell Stats")

var Damage = 10
var Speed = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
