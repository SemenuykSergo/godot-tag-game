# перемешиваем массив 
func arrRandom(arr):
	var temp
	var rnd
	var count=16
	while (count!=0):
		rnd=RandomNumberGenerator.new()
		rnd.randomize()
		var myRandNumber=rnd.randi_range(0,count-1)
		temp=arr[myRandNumber]
		arr[myRandNumber]=arr[count-1]
		arr[count-1]=temp
		count-=1
	return arr 
