extends Node

func _on_Button_button_down():	
	print(get_index())# получаем индекс массива выведенных полей	
	print(get_node("fieldItem/tab").text)#содержимое клетки
