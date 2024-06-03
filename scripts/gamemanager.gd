extends Node

var score = 0 

@onready var coins = %coins
func add_point():
	score += 1
	coins.text = str(score)
	print(score)
