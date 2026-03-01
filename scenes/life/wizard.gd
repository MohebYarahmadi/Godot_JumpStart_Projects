extends Node2D

class_name Wizard

signal cast_spell

@onready var timer: Timer = $timer
@onready var spell_timer: Timer = $spell_timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func hit_by_hobbit() -> void:
	spell_timer.stop()
	scale = Vector2(0.1, 0.1)


func _on_timer_timeout() -> void:
	show()


func _on_spell_timer_timeout() -> void:
	print("Spell was cast!")
	cast_spell.emit()
