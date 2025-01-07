extends Node2D

@export var button_group: ButtonGroup

var rng = RandomNumberGenerator.new()
var opp_throws_list = ["Rock","Paper","Sissors"]
var winning_pairs = {
	"Rock": "Sissors",
	"Paper": "Rock",
	"Sissors": "Paper"
}


# Called when the node enters the scene tree for the first time.
func _ready():
	button_group.pressed.connect(button_pressed)
	pass
	

		
	
	
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func button_pressed(button):
	var winner
	var plr_throw = button_group.get_pressed_button().text
	var opp_throw = opp_throws_list[rng.randi_range(0,2)]
	
	if winning_pairs[plr_throw] == opp_throw:
		winner = 1
	elif plr_throw == opp_throw:
		winner = 0
	else:
		winner = -1
	
	$Play_Area.announcer(plr_throw, opp_throw, winner)
	$Scoreboard.score(winner)
