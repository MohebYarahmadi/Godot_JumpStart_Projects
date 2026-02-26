@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn: Character = Character.new("Aragorn", 100, "Bow")
	var forodo: Hero = Hero.new("Stealth" ,"Forodo", 100, "Sting")

	print(aragorn.m_health)
	aragorn.print_info()
	aragorn.m_health = 1000
	aragorn.print_info()
	print(aragorn.health_str)
	
	aragorn.attack()
	forodo.attack()
	forodo.use_ability()
	
	if aragorn is Character:
		print("aragon is Characte")
	if aragorn is Hero:
		print("aragon is Hero")
	if forodo is Character:
		print("forodo is Characte")
	if forodo is Hero:
		print("forodo is Hero")

	print(aragorn)
	print(forodo)
