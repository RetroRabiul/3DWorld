extends Control

var my_score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	Global_signal.change_score.connect(_change_score)
	$ScoreLabel.text = "Score: "+str(my_score)

func _change_score(amount):
	my_score += amount
	$ScoreLabel.text = "Score: "+str(my_score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
