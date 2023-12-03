class_name SpellBookPage extends Node3D
var Spell= preload("res://spell.tscn")
@export var Name = ""
@export_enum("Air", "Fire", "Water","Earth","Light","Dark") var Type: String
@export var CreationSpellComponent : Array[SpellComponent]
@export var AmountSpellComponent : Array[SpellComponent]
@export var MovementSpellComponent : Array[SpellComponent]
@export var OnHitSpellComponent : Array[SpellComponent]
@export var ExtraSpellComponent : Array[SpellComponent]
var SpellsRoot
var SpellDescription
# Called when the node enters the scene tree for the first time.
func _ready():
	$".".name = Name
	print($".".name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func CreateSpell():
	var NewSpell = Spell.instantiate()
	NewSpell.TypeOfProjectile 
	NewSpell.DamageLevel 
	SpellsRoot.add_child(NewSpell)
