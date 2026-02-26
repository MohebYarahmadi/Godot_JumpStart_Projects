extends Character

class_name Hero

var m_ability: String = "Ability"

func _init(new_ability: String, new_name: String, new_health: int, new_weapon: String) -> void:
	super(new_name, new_health, new_weapon)
	m_ability = new_ability

func use_ability() -> void:
	print("%s uses %s" % [_name, m_ability])

func attack() -> void:
	super()
	print("%s tries to attacks with %s" % [_name, _weapon])
