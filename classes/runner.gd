@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn: Character = Character.new("Aragorn", 100, "Bow")

	print(aragorn.m_health)
	aragorn.print_info()
	aragorn.m_health = 1000
	aragorn.print_info()
	print(aragorn.health_str)
