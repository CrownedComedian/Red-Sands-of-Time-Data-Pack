# Appends the work and validation functions for path selection to the calculation queue
data modify storage rsot:calculation_queue content append value {function:"rsot:calculate_selected_paths", args:"{}"}
data modify storage rsot:calculation_queue content append value {function:"rsot:calculate_selected_paths_are_valid", args:"{}"}