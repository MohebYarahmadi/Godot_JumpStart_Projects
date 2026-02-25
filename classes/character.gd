extends Object

class_name Character

# _ stands for Memeber Attributes, private by convention
#var _health: int
var _name: String
var _weapon: String

#var health: int:
	#get = get_health,
	#set = set_health

var m_health: int = 25:	# 25 is default value. you can omitt that
	get:
		print("Getter")
		return m_health
	set(value):
		print("Setter")
		m_health = clampi(value, 0, 100)
		
var health_str: String:
	get:
		return "%s health:%d" % [_name, m_health]

func _init(new_name: String, new_health: int, new_weapon: String) -> void:
	_name = new_name
	m_health = new_health
	_weapon = new_weapon

func print_info() -> void:
	print("%s health:%d wields:%s" % [
		_name, m_health, _weapon
	])

#func set_health(new_health: int) -> void:
	#if new_health > 100: health = 100
	#elif new_health < 0: health = 0
	#else: _health = new_health
	#
#func get_health() -> int:
	#return _health
