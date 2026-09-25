class_name PlayerState
extends Node

signal transitioned

var ctrl : 	 PlayerController
var input : PlayerInput

func init(_ctrl : PlayerController, _input : PlayerInput) -> void:
	ctrl 	= _ctrl
	input = _input

func enter():
	pass
	
func exit():
	pass
	
func update(_delta : float):
	pass
	
func physics_update(_delta : float):
	pass
