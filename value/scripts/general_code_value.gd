class_name GeneralCodeValue
extends CodeEdit

var disableAll : bool = false

# TODO : Add event listeners ... needs text_changed
# TODO : Add signals ... needs value_changed

func _ready() -> void:
	pass
func _process(_delta: float) -> void:
	pass

func set_value(newVal : String):
	text = newVal
func get_value() -> String:
	return text
func set_settings(_newVal : Variant):
	pass
func get_settings():
	pass
func _set_disabled(disable : bool = false):
	editable = !disable
	disableAll = disable

func export(_withSettings : bool = true) -> Dictionary:
	return {"value":text}
func import(data : Dictionary = {"value":""}):
	text = data.value
