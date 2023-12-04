extends SpellComponent 

var AmountLevel = LevelOfSpellProperty
@onready var Amount = getAmount(AmountLevel)

func _ready():pass
	

func  CreateSpell():
	pass
	
	
func getAmount(Level):
	return Level * 2
