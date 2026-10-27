extends Node2D
onready var timer = $Timer
onready var label_tempo = $Label
func _process(delta):
	label_tempo.text = "Ache a saída antes que o tempo acaabe!     Tempo:" + str(int(timer.time_left))
func _on_Timer_timeout():
	print("O tempo acabou!")
	get_tree().change_scene("res://Menu.tscn")
