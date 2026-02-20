extends Node2D


@onready var plane: Sprite2D = $plane
@onready var carrier: Sprite2D = $carrier
@onready var helicopter: Sprite2D = $carrier/helicopter


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	plane.position.x += 50.0 * delta
	if plane.scale.x < 0.7:
		plane.scale.x += 0.1 * delta
		plane.scale.y += 0.1 * delta
	helicopter.global_position.x += 20.0 * delta	# it's a child node
	helicopter.global_position.y -= 10.0 * delta	# it's a child node
	carrier.position.x -= 10.0 * delta
	carrier.position.y += 10.0 * delta
