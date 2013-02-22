require 'erb'
require 'date'

x = 42


template = ERB.new "The value of x is: <%= x %>"
asctime_string = ERB.new "Ascii time is now: <%= Time.now.asctime %>"
integer_string = ERB.new "45 is:
		Cosine: <%= cos = Math.cos(45) %> radians, <%= cos*(180/Math::PI) %> degrees
		Sine: 	<%= sin = Math.sin(45) %> radians, <%= sin*(180/Math::PI) %> degrees
		Tan:  	<%= tan = Math.tan(45) %> radians, <%= tan*(180/Math::PI) %> degrees
"

lyrics = "Are you ready, do you know?"
charact_string = ERB.new "There are <%= lyrics.length %> characters in the sentence '<%= lyrics %>'"

puts template.result(binding)
puts asctime_string.result(binding)
puts integer_string.result(binding)
puts strings_string.result(binding)

my_pets = ['dogs', 'cats', 'unicorns']
 
my_pets.each do |pet|
  puts "#{pet} are adorable!"
end

i = 0
num = 5

while i < num do
	puts "I am #{i} adorable motherfucker"
	i += 1
end

