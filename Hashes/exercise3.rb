animal = { kind: 'Lynx', color: 'white', weight: '75lbs' }

animal.keys.each do |key|
	puts "#{key}"
end

animal.values.each do |value|
	puts "#{value}"
end