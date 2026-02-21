extends Node2D


@onready var plane: Sprite2D = $plane
@onready var carrier: Sprite2D = $carrier

# Access as Unique Name option on for helicopter (recomended) % sign
# ...now it doesn't matter the hierarchy of helicopter.
@onready var helicopter: Sprite2D = %helicopter

const ROT_SPEED: float = PI / 6

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
	if Input.is_action_pressed("FlyForward"):
		plane.move_local_x(50.0 * delta, false)	# not calculate scale. a shorter way
	if Input.is_action_pressed("ui_down"):
		plane.move_local_x(-30.0 * delta)
	if Input.is_action_pressed("ui_right"):
		plane.rotate(ROT_SPEED * delta)
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-ROT_SPEED * delta)
	
