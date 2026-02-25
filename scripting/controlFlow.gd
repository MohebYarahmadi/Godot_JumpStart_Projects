@tool
extends EditorScript

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var ring_bearer: String = "Frodo"
	
	if ring_bearer == "Boromir":
		print("You cannot wield it!")
		print("Hello 1")
	elif ring_bearer == "Frodo":
		print("Take it to the fire from whence it came!")
		print("Hello 4")
	else:
		print("Gollum has the ring!")
		print("Hello 3")
	print("Hello 2")
	
	# ternary operator
	var next_state: String
	next_state = "idle" if ring_bearer=="Mike" else "fall"
	print(next_state)
	
	var arrows: int = 10
	while arrows > 0:
		arrows -= 1
		if arrows == 3:
			print("Number 3 skipped!")
			continue
		print("Arrows left: ", arrows)
		if arrows == 4:
			print("That one, was blessed one!")
		
	var fellowship: Array[String] = [
		"Frodo", "Sam", "Aragon", "Gimli", "Legolas",
		"Gandolf", "Boromir", "Merry", "Pippin"
	]
	
	for member in fellowship:
		print(member, " joins the quest!")
		
	for orc in range(1, 22, 2):
		print("Orc: ", orc)
	
	var scared: String = "Sam"
	
	for character in fellowship:
		if character == scared:
			continue
		print(character, " marches into battle!")
