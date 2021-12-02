extends Control
var count=0



func _on_Button_button_down():
	get_node("field/Label").text=str(count)
	print(get_node("field/Label").get_instance_id())
	count+=1
