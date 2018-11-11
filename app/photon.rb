
require "ruby_spark"



device = RubySpark::Device.new("3b003b000647373034353237", "981e56fc328ec3279f37dd7baa60b7a5c604b12c")

puts device.info
# if device.variable("toggleLights") == "pressed"
#  device.function("setColor", "red")
# end

device.function("toggleLights", "on")

#  https://api.particle.io/v1/devices/3b003b000647373034353237/toggleLights
# end