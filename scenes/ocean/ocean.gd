extends Node2D


@onready var plane: Sprite2D = $plane
@onready var helicopter: Sprite2D = $carrier/helicopter


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	plane.position.x += 50.0 * delta
	helicopter.global_position.x += 20.0 * delta	# it's a child node
