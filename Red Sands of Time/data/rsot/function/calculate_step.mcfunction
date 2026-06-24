# Executes the functions on the calculation queue until the queue is empty by performing one step of execution on the queue and scheduling the next step of the calculation queue unless the queue is empty.
# Allows for the calculation queue to be executed over multiple ticks, preventing lag spikes.

# execute the next function on the calculation queue
function rsot:function/dynamic with storage rsot:calculation_queue content[0]

# remove the executed function from the calculation queue
data remove storage rsot:calculation_queue content[0]

# if there are more functions in the calculation queue, schedule the next step
execute if data storage rsot:calculation_queue content[0] run schedule function rsot:calculate_step 2t
