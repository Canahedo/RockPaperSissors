extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func announcer(plr_throw, opp_throw, winner):
	$Your_Selection.text = plr_throw
	$Opp_Selection.text = opp_throw
	
	if winner == 1:
		$Winner.text = "You Win"
	elif winner == -1:
		$Winner.text = "They Win"
	else:
		$Winner.text = "Draw"
