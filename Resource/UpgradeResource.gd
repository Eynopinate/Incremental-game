extends Resource
class_name BasedUpgradeResource

# Basic UI Information
@export var id: String = ""
@export var title: String = ""
@export_multiline var description: String = ""

@export var is_active : bool = false

var rolled_effects : Dictionary = {}
