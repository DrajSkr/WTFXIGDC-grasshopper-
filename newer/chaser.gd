extends Area2D
@onready var speed = 600

@onready var posi=get_parent().get_node("ant").global_position
@onready var pos = global_position
func _on_body_entered(body):
	if(body.name != "ant"):
		scale = Vector2(1.6,1.6)
	if(body.name == "ant"):
		print("died")
		self.queue_free()


func _on_body_exited(body):
	if(body.name != "ant"):
		scale = Vector2(1,1)

func _process(delta):
	pos += (posi-global_position).normalized()*speed*delta


func _on_timer_timeout():
	posi = get_parent().get_node("ant").global_position
	


func _on_timer_2_timeout():
	global_position = pos

