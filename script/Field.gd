extends Node

var tempValueArr
var itemField
var textExamField
var left=true
var right=true
var up=true
var down=true


func _on_button_button_down():		
	
	itemField=get_node("fieldItem/tab")#нажатое поле
	var positionArr=get_index() #позиция нажатого поля
	#print(positionArr)		
	verificationField(positionArr)
	#print(positionArr+1)
	#print(left)
	examPositionField(positionArr)	
	$fieldItem/beep.play()	
	

func verificationField(positionArr):
	
	if ([0,4,8,12].find(positionArr,0)!=-1):
		left=false
	if([3,7,11,15].find(positionArr,0)!=-1):
		right=false
	if([0,1,2,3].find(positionArr,0)!=-1):
		up=false
	if ([12,13,14,15].find(positionArr,0)!=-1):
		down=false

func examPositionField(positionArr):	
	var changeFieldPosition	
	
	if (left==true):
		changeFieldPosition=instance_from_id(GlobalArr.fieldId[positionArr-1])
		if(changeFieldPosition.text==""):
			changeFieldItem(changeFieldPosition)
		
	
	if (right==true):
		changeFieldPosition=instance_from_id(GlobalArr.fieldId[positionArr+1])	
		if(changeFieldPosition.text==""):
			changeFieldItem(changeFieldPosition)
		
	
	if (up==true):
		changeFieldPosition=instance_from_id(GlobalArr.fieldId[positionArr-4])	
		if(changeFieldPosition.text==""):
			changeFieldItem(changeFieldPosition)
			
	
	if (down==true):
		changeFieldPosition=instance_from_id(GlobalArr.fieldId[positionArr+4])	
		if(changeFieldPosition.text==""):
			changeFieldItem(changeFieldPosition)

func changeFieldItem(changeFieldPosition):
		
		#позиция поля по id с которым будет обмен
		textExamField=changeFieldPosition	
		tempValueArr=itemField.text	#содержимое нажатого поля временное хранение		
		# содержимое нажатого поля меняется на содержимое пустого поля
		itemField.text=String(textExamField.text)		
		# содержимое пустого поля меняется на содержимое нажатого поля, хранимое во временной переменной
		textExamField.text=String(tempValueArr) 
		
