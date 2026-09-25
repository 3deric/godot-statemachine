class_name PlayerStateGrond
extends PlayerState

func update(_delta : float):
	if input.input.z > 0:
		ctrl.jump()
		transitioned.emit(self, "Player_Jump")

	ctrl.rotation.y += input.input.x * ctrl.rotation_speed * _delta

	var direction = ctrl.transform.basis.z

	ctrl.velocity.x = direction.x * input.input.y * ctrl.speed
	ctrl.velocity.z = direction.z * input.input.y * ctrl.speed

	ctrl.move_and_slide()
