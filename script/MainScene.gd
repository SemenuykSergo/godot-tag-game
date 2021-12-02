extends Control

var scene
var node
var itemText
var menuBool=false


	
func startGame():
	$ColorScene/VBoxContainerMenu.hide()
	$ColorScene/HBoxContainerField/GridContainerField.show()
	
	if (menuBool==false):
		scene=preload("res://scene/FieldNew.tscn")	
		get_node("ColorScene/HBoxContainerField/GridContainerField").columns=GlobalArr.fieldsSize 
		for i in pow(GlobalArr.fieldsSize,2):
			node=scene.instance()
			get_node("ColorScene/HBoxContainerField/GridContainerField").add_child(node)
			itemText=node.get_node("FieldColor/FieldLabel")
			itemText.text=str(i)

	
	


func _on_Button44_button_down():
	GlobalArr.fieldsSize=4	
	startGame()


func _on_Button55_button_down():
	GlobalArr.fieldsSize=5	
	startGame()


func _on_Button66_button_down():
	GlobalArr.fieldsSize=6	
	startGame()




func _on_ButtonSoundOnOff_button_down():
	GlobalArr.soundOnOff=!GlobalArr.soundOnOff
	


func _on_BackMenuButton_button_down():
	
	$ColorScene/HBoxContainerField/GridContainerField.hide()
	$ColorScene/VBoxContainerMenu.show()
	menuBool=true
	
