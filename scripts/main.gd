extends Control

@export var name_label: Label 
@export var job_label: Label 
@export var background: ColorRect 
@export var avatar: TextureRect 


# База данных наших состояний 
var profiles = { 
	'dev': { 
		'name': 'Алексей Разработчик', 
		'job': 'Godot Engine Expert', 
		'color': Color('#2d3436') 
	}, 
	'design': { 
		'name': 'Алекс Дизайнер', 
		'job': 'UI/UX & Motion Design', 
		'color': Color('#6c5ce7') 
	} 
} 

func _ready(): 
	# Установим начальное состояние 
	update_ui('dev') 
	
func update_ui(profile_key: String): 
	var data = profiles[profile_key] 
	name_label.text = data['name'] 
	job_label.text = data['job'] 
	
	# Плавная смена цвета фона (Tween) 
	var tween = create_tween() 
	tween.tween_property(background, 'color', data['color'], 0.4).set_trans(Tween.TRANS_SINE) 
	
	# Небольшая анимация подпрыгивания аватарки 
	var bounce = create_tween() 
	bounce.tween_property(avatar, 'scale', Vector2(1.1, 1.1), 0.1) 
	bounce.tween_property(avatar, 'scale', Vector2(1.0, 1.0), 0.1)


func _on_button_2_pressed() -> void:
	update_ui('dev') 


func _on_button_pressed() -> void:
	update_ui('design')
