@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn: Character = Character.new("Aragorn", 100, "Bow")
	var frodo: Character = Character.new("Frodo", 80, "Sword")
	
	aragorn.print_info()
	aragorn.m_health -= 30
	aragorn.print_info()
	
	frodo.print_info()
	frodo.m_weapon = "Slinger"
	frodo.print_info()
