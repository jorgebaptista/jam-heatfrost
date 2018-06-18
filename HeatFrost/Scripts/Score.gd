tool extends Label

func update_score(score_to_add):
	global.score += score_to_add
	update()

func _ready():
	update()

func update():
	$Value.text = str(global.score)