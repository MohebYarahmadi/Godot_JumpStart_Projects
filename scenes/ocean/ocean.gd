extends Node2D


@onready var plane: Sprite2D = $plane
@onready var carrier: Sprite2D = $carrier

# Access as Unique Name option on for helicopter (recomended) % sign
# ...now it doesn't matter the hierarchy of helicopter.
@onready var helicopter: Sprite2D = %helicopter

var _target: Vector2 = Vector2.ZERO

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("SetTarget"):
		_target = get_local_mouse_position();
		plane.look_at(_target);


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# plane will move toward mouse position
	#plane.position = plane.position.move_toward(_target, 50.0 * delta)
	#plane.position += plane.transform.x.normalized() * 50.0 * delta	# plane is scaled so normalized
	plane.move_local_x(50.0 * delta, false)	# not calculate scale. a shorter way
	
	carrier.position.x -= 10.0 * delta
	carrier.position.y += 10.0 * delta
	
