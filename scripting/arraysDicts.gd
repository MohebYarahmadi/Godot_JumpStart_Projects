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
		
