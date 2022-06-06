require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
a1 = Animal.new("Lizard", 10, "Lizzie")
a2 = Animal.new("Peregrine Falcon", 8, "Spencer")
a3 = Animal.new("Red Fox", 20, "Jacob")
a4 = Animal.new("Badger", 45, "Thomas")
a5 = Animal.new("Aussie", 30, "Lenny")

z1 = Zoo.new("The Norfolk Zoo", "Norfolk, VA")
z2 = Zoo.new("VBCPS", "Virginia Beach, VA")

a1.zoo = z1
a2.zoo = z1
a3.zoo = z1
a4.zoo = z2
a5.zoo = z2

binding.pry
puts "done"
