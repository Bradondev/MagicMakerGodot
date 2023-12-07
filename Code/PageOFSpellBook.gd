class_name SpellBookPage extends Node3D
@onready var Player = $"./"

var Spell= preload("res://spell.tscn")
var ObjectsCreated =[]
var CurrentSpell = true
var CastType = "Single Click"
var CastTime = 1
var Amount = 1
var TypeOfAmount = ""
var SpellThatsGettingShoot
var FireRate = 1.0
class NewSpell:
	var CastType : String
	var Damage = 0
	var AmountOfProjectiles = 0
	var ProjectileSize = 1
	var ProjectileShape : Shape3D
	var Element :String
	var SpawnArea : Vector3
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
@onready var ArraryForSpawnArea = [Player.global_position,Vector3(0,0,0)]
var TempAmount =0 
var TempDamage =0 
var TempSize  = 0
var TempType : String
var TempShape : String
var TempElement :String
var TempSpawnArea :String
var  TempProjectile : String

func  _ready():
	$".".name = Name
	print(AllComponents, "bruh")
	AllComponents += CreationSpellComponent +AmountSpellComponent + MovementSpellComponent + OnHitSpellComponent + ExtraSpellComponent
	print((CreateNewSpell(AllComponents)))
func _process(delta):
	pass
func UseSpell():
	if TypeOfAmount =="All at once":
			FireRate = 0
			print("yers")
	for Component in ObjectsCreated:
			ShootSpell(Component)
			await get_tree().create_timer(FireRate).timeout	
func CreateNewSpell(AllComponentss: Array [SpellComponent]):
	print_debug(ObjectsCreated )
	if ObjectsCreated.is_empty():
		var TempNewSpell = NewSpell.new()
		for Component in AllComponents:
			if Component.TypeOfSpellProperty == "Size":
				TempNewSpell.ProjectileSize += Component.Size
			elif Component.TypeOfSpellProperty == "Damage":
				TempNewSpell.Damage= Component.Damage
			elif Component.TypeOfSpellProperty == "Shape":
				TempNewSpell.ProjectileShape = Component.Shape
				print( "get shape")
			elif Component.TypeOfSpellProperty == "Element":
				TempNewSpell.Element = Component.Element
			elif Component.TypeOfSpellProperty == "TypeOfSpell":
				TempNewSpell.TypeOfSpell = Component.TypeOfSpell
			elif Component.TypeOfSpellProperty == "SpawnArea":
				TempNewSpell.SpawnArea += Component.SpawnArea
				print(Component.SpawnArea )
			elif Component.TypeOfSpellProperty == "OnHitEffect":
				TempNewSpell.OnHitEffect = Component.OnHitEffect
			elif Component.TypeOfSpellProperty == "CastType":
				CastType = Component.CastType
				CastTime += Component.CastTime
			elif Component.TypeOfSpellProperty == "FireRate":
				FireRate = Component.FireRate
			elif Component.TypeOfSpellProperty == "Type of Amount":
				TypeOfAmount = Component.TypeOfAmount
				TempNewSpell.AmountOfProjectiles  += Component.Amount
				Amount += Component.Amount
		if Amount > 1:
			while Amount != 1:
				ObjectsCreated.append(TempNewSpell)
				Amount -= 1
		else :
			ObjectsCreated.append(TempNewSpell)
		print("added new Spell")
	else :
		print("Not empty")
	return 
	
func get_all_children(in_node,arr:=[]):
	arr.push_back(in_node)
	for child in in_node.get_children():
		arr = get_all_children(child,arr)
	return arr
	
	
func ShootSpell(SpellStats):
	
	SpellThatsGettingShoot = Spell.instantiate()
	SpellThatsGettingShoot.Scale  = SpellStats.ProjectileSize
	SpellThatsGettingShoot.position = Player.global_position 
	SpellThatsGettingShoot.position += SpellStats.SpawnArea
	SpellThatsGettingShoot.transform.basis = Player.global_transform.basis
	SpellThatsGettingShoot.velocity = -SpellThatsGettingShoot.transform.basis.z * 10
	get_tree().get_root().get_node("Level").add_child(SpellThatsGettingShoot)
	
func  GetPosition(Component):
	pass



func _on_timer_timeout():
	pass
