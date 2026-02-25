extends Object

class_name Character

# _ stands for Memeber Attributes, private by convention
var _health: int
var _name: String
var _weapon: String

func _init(name: String, health: int, weapon: String) -> void:
	_name = name
	_health = health
	_weapon = weapon

func print_info() -> void:
	print("%s health:%d wields:%s" % [
		_name, _health, _weapon
	])

func set_health(new_health: int) -> void:
	if new_health > 100: _health = 100
	elif new_health < 0: _health = 0
	else: _health = new_health
	
func get_health() -> int:
	return _health
