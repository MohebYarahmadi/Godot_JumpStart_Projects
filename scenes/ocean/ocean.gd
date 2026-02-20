extends Node2D


@onready var plane: Sprite2D = $plane
@onready var carrier: Sprite2D = $carrier

# Access as Unique Name option on for helicopter (recomended) % sign
# ...now it doesn't matter the hierarchy of helicopter.
@onready var helicopter: Sprite2D = %helicopter


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#plane.rotation = helicopter.global_rotation
	helicopter.global_rotation = plane.rotation


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	plane.position.x += 50.0 * delta
	if plane.scale.x < 0.7:
		plane.scale.x += 0.1 * delta
		plane.scale.y += 0.1 * delta
	helicopter.position.x += 50.0 / helicopter.global_scale.x * delta	# it's a child node
	carrier.position.x -= 10.0 * delta
	carrier.position.y += 10.0 * delta
	plane.rotation_degrees += 30.0 * delta;
	
	#print("helicopter.position: ", helicopter.position)
	#print("helicopter.global_position: ", helicopter.global_position)
	#print("helicopter.scale: ", helicopter.scale)
	#print("helicopter.blobal_scale: ", helicopter.global_scale)
	#print("helicopter.rotation: ", helicopter.rotation_degrees)
	#print("helicopter.blobal_rotation: ", helicopter.global_rotation_degrees)
	#print("helicopter.rotation: ", rad_to_deg(helicopter.rotation))
	#print("helicopter.blobal_rotation: ", rad_to_deg(helicopter.global_rotation))
	#pass
