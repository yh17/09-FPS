extends Node2D

export var Countdown = 10

func update_time(t):
	$Time/Time.text = "Time remaining: " + str(t)

func _ready():
	pass # Replace with function body.


func _on_Timer_timeout():
	Countdown -= 0.01
	update_time(Countdown)
	if Countdown <= 0:
		$Lose.visible = true
		$Time.visible = false
		$Timer.stop()
