extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func score(winner):
	var score_obj
	if winner == 1:
		score_obj = $Your_Score
	elif winner == -1:
		score_obj = $Opp_Score
	else:
		return
		
	var score_int = int(score_obj.text)
	score_obj.text = str(score_int + 1)
