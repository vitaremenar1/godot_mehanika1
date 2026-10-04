class_name Igrac 
extends CharacterBody2D

var bodovi: int = 0

@export var brzina: float = 300.0
@export var ubrzanje: float = 1500.0
@export var trenje: float = 1200.0

var slika: Sprite2D

func _init() -> void:
	print("Igrac: _init")
	
func _ready() -> void:
	slika = $Slika
	bodovi = 0
	print("Igrac: _ready , brzina ", brzina)

func _physics_process(delta: float) -> void:
	var smjer := Input.get_vector("lijevo", "desno", "gore", "dolje")
	
	if smjer != Vector2.ZERO: 
		velocity = velocity.move_toward(smjer * brzina, ubrzanje * delta)
		slika.flip_h = smjer.x < 0
	else:
		velocity = velocity.move_toward(Vector2.ZERO, trenje * delta)
	
	move_and_slide()

func dodaj_bodove(iznos: int) -> void:
	bodovi += iznos
	print("Igrac: bodova", bodovi)
	
