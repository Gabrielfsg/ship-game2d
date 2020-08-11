extends CanvasLayer


const pre_enemy = preload("res://Enemy.tscn")
var saude = 100
var lp = 0
var score = 0


func _ready():#no ready os comandos dados ativam apos o jogo começar
	$Nave.visible = false
	get_tree().paused = true

func _process(delta):
	lp = $Nave.life
	get_node("Control/saude_bar").value = lp
	if lp <= 0:#movimentações no menu escondendo e mostrando coisa quando necessário
		var inimigos = get_tree().get_nodes_in_group("quants")
		for inimigo in inimigos:
			inimigo.queue_free()
		$Control/TimeScore.stop()
		$Control.visible = false
		$GameOver.visible = true
		$Nave.visible = false
		get_tree().paused = true
	$Control/Pontos.text = String(score)

func _on_TimeEN_timeout():#spawn de enimigos por tempo
	print($TimeEN.wait_time)
	var enemyG = pre_enemy.instance()
	enemyG.set_position(Vector2(rand_range(215,-125),-540))
	# COLOCANDO A POSIÇÃO AONDE O SPAWN OCORRE OBEDECENDO O X E Y SENDO O X PRIMEIRO
	get_parent().add_child(enemyG)
	enemyG.add_to_group("quants")
	if $TimeEN.wait_time > .8:
		$TimeEN.wait_time -= .14
		$TimeEN.start()
	elif $TimeEN.wait_time < .8:
		$TimeEN.wait_time -= .0004

func atualizar_saude(valor):#atualizar a barra de vidA
	saude += valor
	#saude = saude + valor
	var saude_bar = get_node("Control/saude_bar")
	saude_bar.set_value(saude)

func _on_TimeScore_timeout():#ATUALIZAR SCORE A PARTIR DO TEMPO
	score += 1
	$Control/TimeScore.start()
	pass 

func _on_Button_pressed():
	get_tree().reload_current_scene()
	pass 


func _on_btnStart_pressed():
	$TimeEN.start()
	$Control/TimeScore.start()
	$Nave.visible = true
	$Control.visible = true
	$StartPanel.visible =  false
	get_tree().paused = false
	
