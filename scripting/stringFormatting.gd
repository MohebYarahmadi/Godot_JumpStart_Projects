@tool
extends EditorScript
enum Race { HOBBIT, ELF, DWARF, HUMAN, ORC, WIZARD }

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var text: String = "Gandalf the Grey"
	print(text.length())
	
	var name: String = "Aragorn"
	print(name[0])
	print(name[3])
	print(name[-3])
	
	var quote: String = "One Ring to rule them all"
	var small_string: String = quote.substr(2)
	print(small_string)
	
	
	var prophecy: String = "The heir of Isildur shall return."
	var found: int = prophecy.find("Isildur", 14)
	print(prophecy.substr(prophecy.find("Isildur")))
	print(found)
	
	
	var spell: String = "Fireball"
	if spell.begins_with("Fire") == true:
		print("Fire")
	if spell.ends_with("all") == true:
		print("all")
	
	var age: int = 130
	var health: float = 82.536
	
	var ps: String = "health: %.0f" % health
	print(ps)
	
	var psm: String = "health: %.0f age: %d" % [ health, age ]
	print(psm)
	
	print("Padded Age: [%09d]" % age)
	
