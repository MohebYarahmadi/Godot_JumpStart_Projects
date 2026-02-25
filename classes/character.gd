extends Object

class_name Character

# m_ stands for Memeber Attributes
var m_health: int
var m_name: String
var m_weapon: String

func _init(name: String, health: int, weapon: String) -> void:
	m_name = name
	m_health = health
	m_weapon = weapon

func print_info() -> void:
	print("%s health:%d wields:%s" % [
		m_name, m_health, m_weapon
	])
