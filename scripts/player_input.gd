class_name PlayerInput
extends Node

@onready var player_ctrl : PlayerController = $"../../CharacterBody3D"

const JUMP_COOLDOWN : float = 1.0 # cooldown constant

var _jump_timer : float = 0.0 # jump cooldown

var input : Vector3 = Vector3.ZERO #input values

func _process(_delta):
	_jump_cooldown(_delta)
	_input_handler()

func _input_handler(): 	#handles player inputs
	input.x = Input.get_action_strength('Left') - Input.get_action_strength('Right')
	input.y = Input.get_action_strength('Up') - Input.get_action_strength('Down')
	if _can_jump() and Input.is_action_pressed('Jump'):
		input.z = 1
		_set_jump_cooldown()
	else:
		input.z = 0

func _jump_cooldown(_delta) -> void:
	if _jump_timer > 0:
		_jump_timer -= _delta
			
func reset() -> void:
	input = Vector3.ZERO

func _can_jump() -> bool:
	return _jump_timer < 0.01
		
func _set_jump_cooldown() -> void:
	_jump_timer = JUMP_COOLDOWN
	
func get_input() -> Vector3:
	return input
