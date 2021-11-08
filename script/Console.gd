# песочница для тестирования скриптов



extends Node

var arr=[]
var temp
var rnd

func _ready():
	for i in 16:
		arr.append(i+1)
		
	
	var count=16
	while (count!=0):
		rnd=int(rand_range(0,count))
		temp=arr[rnd]
		arr[rnd]=arr[count-1]
		arr[count-1]=temp
		count-=1
 
