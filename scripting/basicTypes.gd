@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var age: int = 139;
	var mag := 34
	var player_name: String = "MasterGamer";
	var score: float = 102.25;
	var is_alive: bool = true;
	
	print("type of all above:");
	print(type_string(typeof(age)));
	print(type_string(typeof(player_name)));
	print(type_string(typeof(score)));
	print(type_string(typeof(is_alive)));
	
	# Make your character with name, age, health ad alive status.
	# print their values and types
	var ch_name: String = "Gimbli"
	var ch_age: int = 33
	var ch_health: float = 100.0
	var ch_is_alive: bool = true
	
	print(ch_name, ch_age, ch_health, ch_is_alive);
