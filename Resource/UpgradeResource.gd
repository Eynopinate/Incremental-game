extends Resource
class_name BasedUpgradeResource

# Basic UI Information
@export var id: String = ""
@export var title: String = ""
@export_multiline var description: String = ""

@export var is_active : bool = false


# Player stats 
@export var Player_Speed_Mod : float 
@export var Player_Health_Mod : float

# Enemy stats
@export var Enemy_Speed_Mod : float
@export var Enemy_Spawnrate_Mod : float 

# Wall stats
@export var Wall_Size_Mod : float
@export var Can_Block_Mod : bool = false
@export var Wall_Blocking_Chance : float 