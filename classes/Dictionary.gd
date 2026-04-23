@tool
extends EditorScript


var BobiDog: Dictionary[String, Variant] = {
	"id": 1,
	"name": "Bobi",
	"type": "Dog",
	"age": 3,
	"energy": 20,
}



# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print(BobiDog["type"])
	if BobiDog["type"] == "Dog":
		print("Bobie is a dog")
	if BobiDog["id"] == 1:
		print(BobiDog["name"])
	
	#add key:value
	BobiDog["food"] = "meat"
	print(BobiDog["food"])
	print(BobiDog)
	
	#add key:value same as using []
	BobiDog.set("toys_total", 12)
	print(BobiDog)
	
	BobiDog.erase("toys_total")
	
	if BobiDog.has("name"):
		print(BobiDog["name"])
	
	var energy = BobiDog.get("energy", 50)
	print(energy)
