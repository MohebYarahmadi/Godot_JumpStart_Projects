@tool
extends EditorScript


var _my_array: Array[int] = []
var _numbers_array = PackedInt32Array()
var _float_array = PackedFloat32Array()
var _list_pay: Array[int] = [1, 2, 3, 4, 5]

var grades: Array[int] = []
var avg: float = 0.0

func double_it(number: int) -> int:
	return number * 2


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print(_my_array)
	_my_array.resize(5)
	print(_my_array)
	
	print(_numbers_array)
	_numbers_array.resize(10)
	print(_numbers_array)
	
	print(_float_array)
	_float_array.resize(10)
	print(_float_array)
	
	_list_pay.map(double_it)
	print(_list_pay)
	print(_list_pay.map(double_it))
	
	grades.resize(20)
	for i in grades.size():
		grades[i] = randi_range(1, 20)
		avg += grades[i]
	print(grades)
	avg = avg / grades.size()
	print(avg)
	
