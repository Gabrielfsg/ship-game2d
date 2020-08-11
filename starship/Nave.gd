extends KinematicBody2D

const pre_tiro= preload("res://Bala.tscn")
var screen_size
var velocidade = Vector2(0,0)
export var life = 100
var prev_shot = false 
onready var init_life = life

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	if Input.is_action_just_pressed("esquerda"):
		velocidade.x = -3.5
	if Input.is_action_just_pressed("direita"):
		velocidade.x = +3.5
	if Input.is_action_just_pressed("stop"):
		velocidade.x = 0
	
	if Input.is_action_just_pressed("tiro"):
		print("effjosf")
		if get_tree().get_nodes_in_group("bala").size() < 5:
			var bala = pre_tiro.instance()
			get_parent().add_child(bala)
			bala.global_position = $Position2D.global_position
			$AnimatedSprite.play("shot")
	else:
			$AnimatedSprite.play("voar")
	
	move_and_collide(velocidade)
	velocidade = move_and_slide(velocidade, Vector2(-1, 0))








func _on_Area2D_area_entered(area):
	life-=35
