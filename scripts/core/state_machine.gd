extends Node
class_name StateMachine

@export var actor: CharacterBody2D

var current_state : State
var states : Dictionary = {}

func _ready() -> void:
	for child in get_children():
		if child is State:
			states[child.name] = child
	current_state = states["Idle"]
	current_state.enter(actor)

func _physics_process(delta: float) -> void:
	current_state.physics_update(delta, actor)

func transition_to(state_name : String) -> void:
	current_state.exit()
	current_state = states.get(state_name, current_state)
	current_state.enter(actor)
