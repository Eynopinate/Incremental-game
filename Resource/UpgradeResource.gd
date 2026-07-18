extends Resource
class_name UpgradeResource

# Basic UI Information
@export var id: String = ""
@export var title: String = ""
@export_multiline var description: String = ""

@export var allowed_stats : Array[String] = []

var rolled_effects: Dictionary = {}
