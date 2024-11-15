extends Control

func _ready() -> void:
	$AnimationPlayer.play("Switch_background")

func _on_new_game_pressed() -> void:
	$Fade_box.visible = true
	$AnimationPlayer.play("Fade out")
