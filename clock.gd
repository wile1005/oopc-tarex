extends Control

func _ready() -> void:
	update_clock(Global.time)

func _on_timer_timeout() -> void:
	if (Global.time == 24):
		Global.time = 0
		if Global.day == 7:
			Global.day = 1
		Global.day +1
	Global.time += 0.5
	update_clock(Global.time)

func update_clock(time):
	if time == floor(time):
		if time < 9:
			$Clock_text.text = "0"+str(time)+":00"
		else:
			$Clock_text.text = str(time)+":00"
	else:
		time = floor(time)
		if time < 9:
			$Clock_text.text = "0"+str(time)+":30"
		else:
			$Clock_text.text = str(time)+":30"
