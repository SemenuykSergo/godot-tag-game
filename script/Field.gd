extends Node

var localArr=[]
#var tempValueArr
#var position
#var itemField


func _on_button_button_down():
	
	localArr=GlobalArr.globalArr	
	
	#print(get_index())# получаем индекс массива выведенных полей	
	#print(get_node("fieldItem/tab").text)#содержимое клетки
	#print(get_node("fieldItem/tab").get_instance_id())
	print(GlobalArr.fieldId)
	
	#position=get_index()-1
	#item=get_node("fieldItem/tab")
	
	
	#tempValueArr=item
	#localArr[position]=
	#localArr[localArr.size-1]=tempValueArr
	
	
	instance_from_id(1294).text="NO"
