require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mike = CarOwner.new("mike")
steve = CarOwner.new("steve")
pat = CarOwner.new("pat")

gil = Mechanic.new("gil", "clunker")
gary = Mechanic.new("gary", "antique")
mick = Mechanic.new("mick", "exotic")


car1 = Car.new("subaru", "outback", "clunker", steve, gil)
car2 = Car.new("chevy", "convertible", "antique", steve, gary)
car3 = Car.new("porsche", "911", "exotic", pat, mick)
car4 = Car.new("toyota", "corolla", "clunker", mike, mick)
car5 = Car.new("toyota", "camry", "clunker", mike, mick)


binding.pry
