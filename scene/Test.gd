extends Node



func _ready():
	var scene=preload("res://scene/TestButton.tscn")
	#var scene = preload("res://scene/TTT.tscn")
	var itemText
	var node
	for i in 5:
		node=scene.instance()		
		get_node("Control/HBoxContainer").add_child(node)
		#itemText=node.get_node("Control/field/Label")
		itemText=node.get_node("Button")
		itemText.text=str(i)
		
	scene=preload("res://scene/TTT.tscn")
	for i in 5:
		node=scene.instance()
		get_node("Control/HBoxContainer3").add_child(node)
		itemText=node.get_node("field/Label")
		itemText.text=str(i)
		
	
	get_node("Control/HBoxContainer2/GridContainer").columns=3
	for i in 5:
		node=scene.instance()
		get_node("Control/HBoxContainer2/GridContainer").add_child(node)
		itemText=node.get_node("field/Label")
		itemText.text="15"
	
	
	
	
