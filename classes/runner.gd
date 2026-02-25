@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn: Character = Character.new()
	aragorn.health = 100
	aragorn.name = "Aragorn"
	aragorn.weapon = "Bow"
	aragorn.print_info()
	
	var timber: Character = Character.new()
	timber.health = 98
	timber.name = "Timber"
	timber.weapon = "Sword"
	timber.print_info()
