class_name Projectile extends Node3D

var Shape 
var Position
@onready var Scale 
var velocity = Vector3.ZERO
@export var g = Vector3.DOWN * 0
var CanMove = false
var grav = 0
var speed = 0
@export_enum("bullet", "Ball","Wall","Area") var TypeOfProjectile: String


@export_category("Spell Stats Level")

@export_range(0, 10,1) var DamageLevel
@export_range(0, 10,1) var SpeedLevel

@export_category("Spell Stats")

var Damage = 10
var Speed = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	SetScale()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	 # Move the bullet to the right (adjust as needed)
	velocity += delta * g
	transform.origin += velocity * delta
	
	# Remove the bullet when it goes off-screen
func SetValues():
	$Area3D/CollisionShape3D.shape = Shape
	
	
func SetScale():
	$".".scale.x = Scale
	$".".scale.y = Scale
	$".".scale.z = Scale



func _on_area_3d_body_entered(body):
	print(body)
	queue_free()
	

