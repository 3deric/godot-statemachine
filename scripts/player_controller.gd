class_name PlayerController
extends CharacterBody3D

@export var speed : float = 5.0
@export var jump_velocity : float = 5.0
@export var rotation_speed : float = 2.0


func jump() -> void:
	velocity.y += jump_velocity
