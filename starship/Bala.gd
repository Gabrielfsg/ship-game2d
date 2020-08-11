extends Area2D

const SPEED = -150
var velocidade = Vector2()

func _ready():
	add_to_group("bala")
	set_process(true)
	pass 

func _physics_process(delta):
	velocidade.y = SPEED * delta
	translate(velocidade)



func _on_Bala_area_entered(area):
	queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
