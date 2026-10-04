extends Node2D

var ukupno_predmeta: int = 0
var kraj: bool = false

func _ready() -> void:
	ukupno_predmeta = get_tree().get_nodes_in_group("Predmet").size()
	print("Main: _ready, predmeta u sceni: ", ukupno_predmeta)

func _process(_delta: float) -> void:
	if kraj:
		return
	if get_tree().get_nodes_in_group("Predmet").is_empty():
		kraj = true
		print("Kraj igre: svi predmeti su pokupljeni")
