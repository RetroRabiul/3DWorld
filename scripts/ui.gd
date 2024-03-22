extends Control

var my_score = 0

var time_left = 60

func _ready():
	Global_signal.change_score.connect(_change_score)
	$ScoreLabel.text = "Score: "+str(my_score)
	$TimeLabel.text = "Time: " + str(time_left)
	$Timer.start()
	
	
func _change_score(amount):
	my_score += amount
	$ScoreLabel.text = "Score: "+str(my_score)
	

func _on_timer_timeout():
	time_left -= 1
	$TimeLabel.text = "Time: " + str(time_left)
	if time_left == 0:
		$Timer.stop()
		Global_signal.emit_signal("game_over")
	
	
