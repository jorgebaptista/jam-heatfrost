extends Timer

var spawn_item = preload("res://Scenes/Obstacle.tscn")

func _ready():
    connect("timeout", self, "_on_timeout")
	
func _on_timeout():
    var item = spawn_item.instance()	
    get_parent().add_child(item)