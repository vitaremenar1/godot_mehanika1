class_name Bonus
extends Predmet

@export var dodatna_brzina: float = 100.0

func pokupi(igrac: Igrac) -> void:
	igrac.brzina += dodatna_brzina
	super.pokupi(igrac)
	print(name, ": brzina igraca je sada ", igrac.brzina)
