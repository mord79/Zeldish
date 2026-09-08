extends State

@export var config: MovementConfig

func enter(_actor: CharacterBody2D) -> void:
	pass

func exit() -> void:
	pass

func physics_update(_delta: float, actor: CharacterBody2D) -> void:
	var input = Input.get_vector("move_left","move_right","move_up","move_down")
	if input == Vector2.ZERO:
		(get_parent() as StateMachine).transition_to("Idle")
	else:   
		actor.velocity = input*config.speed
		actor.move_and_slide()

func handle_input(_event: InputEvent, _actor: CharacterBody2D) -> void:
	pass
