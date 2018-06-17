tool extends Label

export (int) var padding_length = 4

var value = 0

func _fixed_update():
	while value >= 0:
		value += 1
	

func _ready():
    update()

func update():
    $Value.text = ("%0*d" % [value, padding_length])