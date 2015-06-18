person = {name: 'bob', height: '6ft', weight: '100lbs', hair: 'brown'}

person.each do |key, value|
	puts "Bob's #{key} is #{value}"
end