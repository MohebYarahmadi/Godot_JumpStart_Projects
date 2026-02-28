extends Node2D

@onready var hobbit: Hobbit = $hobbit
@onready var wizard: Wizard = $wizard


func _on_wizard_cast_spell() -> void:
	hobbit.hit_by_spell()


func _on_hobbit_kill_wizard() -> void:
	wizard.hide()
