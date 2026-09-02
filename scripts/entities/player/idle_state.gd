extends State

func enter(actor: CharacterBody2D) -> void:
	actor.velocity = Vector2.ZERO

func exit() -> void:
	pass

func physics_update(_delta: float, _actor: CharacterBody2D) -> void:
	if Input.get_vector("move_left","move_right","move_up","move_down") != Vector2.ZERO:
		(get_parent() as StateMachine).transition_to("Walk")

func handle_input(_event: InputEvent, _actor: CharacterBody2D) -> void:
	pass
