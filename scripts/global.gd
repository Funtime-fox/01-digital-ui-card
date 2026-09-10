extends Node

# Обьявялем переменные 
var hp 
var hov 
var bag 
var wg 
var name_user 

# Задаем значения переменным 
func set_info(_hp, _hov, _bag, _wg, _name): 
	hp = _hp 
	hov = _hov 
	bag = _bag 
	wg = _wg 
	name_user = _name
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
