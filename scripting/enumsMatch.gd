@tool
extends EditorScript

const STATE_ASLEEP: int = 3

enum Race {
	HOBBIT,
	ELF,
	DWARF,
	ORC,
	WIZARD,
	HUMAN
}

func identify_race(the_race: Race) -> void:
	match the_race:
		Race.HOBBIT:
			print("Race is Hobbit")
		Race.DWARF:
			print("Race is Dwarf")
		_:
			print("There are many. see yourself.")

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print(Race)
	print(Race.HOBBIT)
	
	var player_race: Race = Race.DWARF
	print("State (key): %s" % Race.keys()[player_race])
	print("State (value): %d" % player_race)
	
	var aragon_race: Race = Race.HUMAN
	var sam: Race = Race.HOBBIT
	var gimli: Race = Race.DWARF
	identify_race(aragon_race) 
	identify_race(sam) 
	identify_race(gimli) 
	
