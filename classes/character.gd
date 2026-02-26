extends Object

class_name Character


var _name: String
var _weapon: String

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


func attack() -> void:
	print("%s attacks with %s" % [_name, _weapon])


func print_info() -> void:
	print("%s health:%d wields:%s" % [
		_name, m_health, _weapon
	])

func _to_string() -> String:
	return "%s character with %s" % [_name, _weapon]
