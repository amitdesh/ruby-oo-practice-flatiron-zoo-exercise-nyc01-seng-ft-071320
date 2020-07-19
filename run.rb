require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

chicago1 = Zoo.new("Chicago1", "Midwest")
chicago2 = Zoo.new("Chicago2", "Midwest")
chicago2 = Zoo.new("Chicago3", "Midwest")

lion = Animal.new("Cat",1000, "Simba", chicago1)
meerkat = Animal.new("Meerkat",10, "Timon",chicago1)
warthog = Animal.new("Warthog", 500, "Pumba",chicago2)
tiger = Animal.new("Cat", 500, "Tiger",chicago1)


binding.pry
puts "done"
