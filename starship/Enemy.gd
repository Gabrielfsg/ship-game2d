extends Area2D

var velocidade =Vector2 (0,+150)
var is_dead = false

func _ready():
	pass 

func _physics_process(delta):
	if is_dead == false:
		set_position(position + velocidade * delta)







func _on_corpo_area_entered(area):
	queue_free()
