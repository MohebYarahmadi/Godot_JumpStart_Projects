@tool
extends EditorScript

func attack_enemy(damage: int, enemy: String = "Troll") -> void:
	print("attack enemy: ", enemy)
	print("damage: ", damage)

func get_player_health() -> int:
	var p_health: int = randi() % 100 + 1
	return p_health

func roll_dice() -> int:
	print("Rolling a dice...")
	var result: int = randi() % 6 + 1	# Return 1-6
	print("You rolled: ", result)
	return result
	

# Passed by value
func try_to_change_by_value(num: int) -> void:
	num += 10
	print("Inside: ", num)
	

func heal_player(amount: int) -> int:
	print("You are healed for ", amount)
	var new_health: int = get_player_health() + amount
	return new_health

# Passed by ref
func add_item(inventory: Array) -> void:
	inventory.append("Sword")
	print("Inside method: ", inventory)


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var dice: int = roll_dice()
	var player_health: int = get_player_health()
	
	print(dice, player_health)
	
	attack_enemy(23, "Orc")
	
	var n: int = 5
	print("Before: ", n)
	try_to_change_by_value(n)
	print("After: ", n)
	
	var inv: Array = ["Shield"]
	print("Before: ", inv)
	add_item(inv)
	print("After: ", inv)
	
	print(player_health)
	player_health = heal_player(50)
	print(player_health)
