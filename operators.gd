@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var orcs: int = 200
	var elves: int = 150
	var total_warriors: int = orcs + elves
	var elves_lost = elves / 4.0
	
	print("Total Warriors: ", total_warriors)
	print("Elves lost: ", elves_lost)
	
	var rings: int = 9
	var fellowship_size: int = 5
	var is_fellowship_full: bool = fellowship_size == rings
	print("Is fellowship full (==)? ", is_fellowship_full)
	is_fellowship_full = fellowship_size != 9
	print("Is fellowship full (==)? ", is_fellowship_full)
	is_fellowship_full = fellowship_size > 4
	print("Is fellowship full (==)? ", is_fellowship_full)
	
	var rivendell_location: Vector2 = Vector2(25, 20)
	var mordor_location: Vector2 = Vector2(25, 100)
	var are_the_same: bool = rivendell_location == mordor_location
	var different_place: bool = rivendell_location != mordor_location
	var mordor_bigger: bool = rivendell_location > mordor_location
	
	print("Rivedell length: ", rivendell_location.length())
	print("Mordor length: ", mordor_location.length())
	print("Are the same? ", are_the_same)
	print("Different place? ", different_place)
	print("Mordor bigger? ", mordor_bigger)
	
	# Always be careful with float camparisons. read the documentation
	var ring_power: float = 0.1 + 0.2
	var true_ring: float = 0.3
	var is_the_one_ring: bool = ring_power == true_ring		# return false but not true
	var is_the_one_ring_correct: bool = is_equal_approx(ring_power, true_ring)	# correct version
	
	print("Is the one ring? ", is_the_one_ring)
	print("Is the one ring correct? ", is_the_one_ring_correct)
	
	
	# boolean comps and or not
	# && || !
	var rohan_arrives: bool = false
	var gandolf_arrives: bool = true
	var orcs_lose: bool = rohan_arrives or gandolf_arrives	# ||
	#var orcs_lose: bool = rohan_arrives and gandolf_arrives	# &&
	#var orcs_lose: bool = not gandolf_arrives	# !
	#var orcs_lose: bool = rohan_arrives and not gandolf_arrives
	
	print("Do the orcs lose? ", orcs_lose)
