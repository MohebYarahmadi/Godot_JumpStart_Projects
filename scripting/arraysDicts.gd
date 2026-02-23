@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var rings_of_power: Array[String] = ["Elves", "Dwarves", "Men"]
	
	print(rings_of_power)
	print(rings_of_power[1])
	rings_of_power[1] = "Orcs"
	print(rings_of_power[1])
	rings_of_power.append("Dwarves")
	rings_of_power.append("Hobbits")
	print(rings_of_power)
	rings_of_power.erase("Elves")
	print(rings_of_power)
	
	if "Men" in rings_of_power:
		print("The race of Men have a ring")
		
	var index: int = rings_of_power.find("Hobbits")
	print(index)
	index = rings_of_power.find("Women")
	print(index)	# -1 means not found
	
	var random_ring: String = rings_of_power.pick_random()
	print(random_ring)
	
	rings_of_power.shuffle()
	print(rings_of_power)
	
	for ring_index in range(rings_of_power.size()):
		print(rings_of_power[ring_index])
	
	for ring_races in rings_of_power:
		print(ring_races)
		
	
	var fellowship: Array[String] = [
		"Frodo", "Sam", "Aragon", "Gimli", "Legolas",
		"Gandolf", "Boromir", "Merry", "Pippin"
	]
	var fellowship_size: int = fellowship.size()
	var total_turns: int = 27
	
	# using modulu % operator
	# turn 9	9 % 9 == 0
	# turn 10	10 % 9 == 1
	for turn in range(total_turns):
		var mem_index: int = turn % fellowship_size
		var member: String = fellowship[mem_index]
		print("Turn ", turn, " : ", member, " takes a step forward!")
	
	
	#========== Dictionary
	var level_items: Dictionary [int, String] = {
		1: "Wooden Sword",
		2: "Iron Sword",
		3: "Steel Sword",
		4: "Elven Blade",
		5: "Dwarven Axe",
		6: "Mithril Armor",
		7: "Anduril, Flame of the West",
		8: "Bow of Galadriel",
		9: "Ring of Power",
		10: "The One Ring (corrupts the user!)"
	}
	
	var level_item_ex: String = level_items[3]
	print("Level 3 item: ", level_item_ex)
	
	for level in level_items:
		print(level, " ", level_items[level])
		
	for level_item in level_items.values():
		print(level_item)
	
	var sorted_keys: Array = level_items.keys()
	sorted_keys.sort()
	for sorted_key in sorted_keys:
		print(sorted_key, " ", level_items[sorted_key])
	
	level_items[4] = "Elven Bow"
	print(level_items)
	
	level_items[11] = "Mithril Shield"	# Add item
	print(level_items)
	
	level_items.erase(11)	# Remove item
	print(level_items)
	
	if level_items.has(4):
		print("Level item has 4")
	if !level_items.has(11):
		print("There is no item 11")
	
	
	var fellowship_dict: Dictionary[String, Dictionary] = {
		"Frodo": {"race": "Hobbit", "weapon": "Sting"},
		"Sam": {"race": "Hobbit", "weapon": "Cooking Pan"},
		"Gandalf": {"race": "Wizard", "weapon": "Glamdring"},
		"Aragorn": {"race": "Human", "weapon": "Andúril"},
		"Legolas": {"race": "Elf", "weapon": "Bow and Daggers"},
		"Gimli": {"race": "Dwarf", "weapon": "Battle Axe"},
		"Boromir": {"race": "Human", "weapon": "Shield and Sword"},
		"Merry": {"race": "Hobbit", "weapon": "Dagger"},
		"Pippin": {"race": "Hobbit", "weapon": "Dagger"}
	}
	
	var hero_weapon: String = fellowship_dict["Aragorn"]["weapon"]
	print(hero_weapon)
	var another_hero_weapon: String = fellowship_dict.Gandalf.weapon
	print(another_hero_weapon)
	
	for fellow in fellowship_dict.values():
		print(fellow.race)
	
	
	
	
	
	
	
	
	
		
