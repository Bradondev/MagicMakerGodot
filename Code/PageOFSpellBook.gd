class_name SpellBookPage extends Node3D
var Spell= preload("res://spell.tscn")
var ObjectsCreated =[]
var CurrentSpell = false
class NewSpell:
	var Damage = 0
	var AmountOfProjectiles = 0
	var  ProjectileSize = 0
	var ProjectileShape : String
	var Element :String
	var SpawnArea : Vector3i
	var TypeOfSpell : String
	var OnHitEffect : Node3D
@export var Name = ""
@export_enum("Air", "Fire", "Water","Earth","Light","Dark", "Null") var ELement: String
@export var CreationSpellComponent : Array[SpellComponent]
@export var AmountSpellComponent : Array[SpellComponent]
@export var MovementSpellComponent : Array[SpellComponent]
@export var OnHitSpellComponent : Array[SpellComponent]
@export var ExtraSpellComponent : Array[SpellComponent]
var AllComponents :Array[SpellComponent]
var SpellsRoot
var TempAmount =0 
var TempDamage =0 
var TempSize  = 0
var TempType : String
var TempShape : String
var TempElement :String
var TempSpawnArea :String
var  TempProjectile : String

func _ready():
	$".".name = Name
	AllComponents += CreationSpellComponent +AmountSpellComponent + MovementSpellComponent + OnHitSpellComponent + ExtraSpellComponent
	
func _process(delta):
	pass
func UseSpell():
	print((CreateNewSpell(AllComponents).AmountOfProjectiles))
	

func CreateNewSpell(AllComponentss: Array [SpellComponent]):
	var TempNewSpell = NewSpell.new()
	for Component in AllComponentss:
		if Component.TypeOfSpellProperty == "Size":
			TempNewSpell.ProjectileSize += Component.Size
		elif Component.TypeOfSpellProperty == "Amount":
			TempNewSpell.AmountOfProjectiles  += Component.Amount
		elif Component.TypeOfSpellProperty == "Damage":
			TempNewSpell.Damage= Component.Damage
		elif Component.TypeOfSpellProperty == "Shape":
			TempNewSpell.ProjectileShape = Component.Shape
		elif Component.TypeOfSpellProperty == "Element":
			TempNewSpell.Element = Component.Element
		elif Component.TypeOfSpellProperty == "TypeOfSpell":
			TempNewSpell.TypeOfSpell = Component.TypeOfSpell
		elif Component.TypeOfSpellProperty == "SpawnArea":
			TempNewSpell.TypeOfSpell = Component.SpawnArea
		elif Component.TypeOfSpellProperty == "OnHitEffect":
			TempNewSpell.OnHitEffect = Component.OnHitEffect
	return TempNewSpell
	
func get_all_children(in_node,arr:=[]):
	arr.push_back(in_node)
	for child in in_node.get_children():
		arr = get_all_children(child,arr)
	return arr
