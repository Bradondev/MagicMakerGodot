class_name SpellBook extends Node3D

@onready var Player = $Player
@export var Name = "Fire book"
@onready var SpellTimer = $Timer
@export var CurrentSpell: int
@export var SpellsInBook : Array[SpellBookPage]
var CanUseSpell = true
var IfIsCastTimeHold = false
func _process(delta):
	SpellsInBook[0].CurrentSpell = true
	SpellTimer.wait_time = SpellsInBook[0].CastTime
	if Input.is_action_just_pressed("LeftClick") and SpellsInBook[0].CastType == "Single Click":
		print("usedSpellbooks")
		SpellsInBook[0].UseSpell()
	elif Input.is_action_pressed("LeftClick") and CanUseSpell and SpellsInBook[0].CastType == "While Hold":
		Setvalues(false,false,true)
		SpellsInBook[0].UseSpell()
	elif Input.is_action_just_pressed("LeftClick") and CanUseSpell and SpellsInBook[0].CastType == "Cast Time Hold":
		Setvalues(true,false,true)
		SpellTimer.start()
		print("usedSpellbooks Wait cast")
	if Input.is_action_just_released("LeftClick") and SpellsInBook[0].CastType == "Cast Time Hold":
			print(SpellTimer.time_left)
			IfIsCastTimeHold = false
			CanUseSpell = true
			SpellTimer.stop()
				
			
func _on_timer_timeout():
	if IfIsCastTimeHold:
		SpellsInBook[0].UseSpell()
		
	else :
		print("Timer end")
		CanUseSpell = true
	


func  Setvalues(HoldCastTime,Can_UseSpell,StartTimer):
	IfIsCastTimeHold = HoldCastTime
	CanUseSpell = Can_UseSpell
	if StartTimer:
		SpellTimer.start()
