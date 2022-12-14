extends Area2D

#NPC with pop up message
var active = false

func _ready():
	connect("body_entered", self,"_on_NPC_body_entered")
	connect("area_exited", self,"_on_NPC_body_exited")
	
func _process(delta):
	$QuestionMark.visible = active
	
func _on_NPC_body_exited(body):
	if body.name == 'player':
		active = false


func _on_NPC_body_entered(body):
	if body.name == 'player':
		active = true
