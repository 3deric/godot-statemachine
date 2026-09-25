class_name PlayerStateJump
extends PlayerState

func physics_update(_delta : float) -> void:
	ctrl.velocity.y -= 9.8 * _delta
	if ctrl.is_on_floor():
		transitioned.emit(self, "Player_Ground")
	ctrl.move_and_slide()
