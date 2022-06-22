extends KinematicBody

var speed = 3  # movement speed
var spin = 0.1  # rotation speed
var velocity = Vector3.ZERO
var positionT = false
var posT = 1
var positionY = false
var posY = 1
var positionU = false
var posU = 1
#var format_string = "Position3D{str}"
#var actual_string = format_string.format({"str": str(pos)})

func get_input():
	velocity = Vector3()
	if Input.is_action_pressed("move_forward"):
		velocity += -transform.basis.z * speed
	if Input.is_action_pressed("move_back"):
		velocity += transform.basis.z * speed
	if Input.is_action_pressed("move_right"):
		velocity += transform.basis.x * speed
	if Input.is_action_pressed("move_left"):
		velocity += -transform.basis.x * speed
	if Input.is_action_pressed("move_up"):
		velocity += transform.basis.y * speed/2
	if Input.is_action_pressed("move_down"):
		velocity += -transform.basis.y * speed/2

	positionT = false	
	if Input.is_action_just_pressed("teleportationT"):
		positionT = true
	positionY = false	
	if Input.is_action_just_pressed("teleportationY"):
		positionY = true
	positionU = false	
	if Input.is_action_just_pressed("teleportationU"):
		positionU = true

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity, Vector3.UP)
	
	if positionT:
		self.translation = get_parent().get_node("Position3DT{str}".format({"str": str(posT)})).translation
		posT += 1
	if posT > 19:
		posT = 1
	
	if positionY:
		self.translation = get_parent().get_node("Position3DY{str}".format({"str": str(posY)})).translation
		posY += 1
	if posY > 10:
		posY = 1
	
	if positionU:
		self.translation = get_parent().get_node("Position3DU{str}".format({"str": str(posU)})).translation
		posU += 1
	if posU > 8:
		posU = 1
	
	
func _unhandled_input(event):
	if event is InputEventMouseMotion:
		if event.relative.x > 0:
			rotate_y(-lerp(0, spin, event.relative.x/10))
		elif event.relative.x < 0:
			rotate_y(-lerp(0, spin, event.relative.x/10))
