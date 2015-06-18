flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
	p name[0, 3]
end