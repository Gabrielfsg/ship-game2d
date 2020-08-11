extends ParallaxBackground


var offSet = 0

func _ready():
	set_process(true)

func _process(delta):
	offSet +=70 * delta
	set_scroll_offset(Vector2(0 , offSet))
