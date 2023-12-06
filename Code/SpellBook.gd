class_name SpellBook extends Node3D

@onready var Player = $Player
@export var Name = "Fire book"
@onready var SpellTimer = $Timer
@export var CurrentSpell: int
@export var SpellsInBook : Array[SpellBookPage]
var CanUseSpell = true

func _process(delta):
	SpellsInBook[0].CurrentSpell = true
	if Input.is_action_just_pressed("LeftClick") and SpellsInBook[0].CastType == "Single Click":
			print("usedSpellbooks")
			SpellsInBook[0].UseSpell()
	elif Input.is_action_pressed("LeftClick") and CanUseSpell and SpellsInBook[0].CastType == "Hold":
			CanUseSpell = false
			SpellTimer.start()
			print("usedSpellbooks timer")
			SpellsInBook[0].UseSpell()


func _on_timer_timeout():
	print("Timer end")
	CanUseSpell = true
