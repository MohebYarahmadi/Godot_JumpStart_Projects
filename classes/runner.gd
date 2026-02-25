@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn: Character = Character.new("Aragorn", 100, "Bow")
	var timber: Character = Character.new("Frodo", 80, "Sword")
	
	aragorn.print_info()
	timber.print_info()
