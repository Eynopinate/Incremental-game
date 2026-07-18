extends Control

@onready var option_1: Button = $Option1
@onready var option_2: Button = $Option2
@onready var option_3: Button = $Option3

# @onready var upgrade_manager: Node = $Upgrade_manager


# func _ready() -> void:
# 	# Get list of random upgrade from uprade manager
# 	var chosen_upgrades = upgrade_manager.get_random_upgrade()
# 	var button_list = [option_1 , option_2 , option_3]
	
	
# 	var raw_roll = randf_range(0.01 , 0.05)
# 	if randf() > 0.5 :
# 		raw_roll = raw_roll * -1
	
	
# 	for i in range(button_list.size()):
# 		button_list[i].visible = i < chosen_upgrades.size()
		
# 		if button_list[i].visible:
# 			var current_card = chosen_upgrades[i]
			
# 			# title of the upgrades
# 			var displayed_text = current_card.title + "\n"
			
# 			# loop throught to find the stats value.
# 			for stats_name in current_card.rolled_effects.keys():
# 				var raw_value = current_card.rolled_effects[stats_name]
# 				# turn it into a percentage.
# 				var percentage = snapped(raw_value * 100 , 1)
# 				# make the name more readable.
# 				var clean_text = stats_name.capitalize()
				
# 				# add the rolled stats to the display text. 
# 				if percentage < 0:
# 					displayed_text += str(percentage) + "% " + clean_text + "\n"
# 				else:
# 					displayed_text += "+" + str(percentage) + "% " + clean_text + "\n" 
				
				
# 			button_list[i].get_node("Label").text = displayed_text
# 			print(displayed_text)
			

			
			
			
			
