def contains(string)
	if /lab/i =~ string
		puts "Bingo!"
	else
		puts"Bummer :( ...."
	end
end

contains("laboratory")
contains("experiment")
contains("Pans Labyrinth")
contains("elaborate")
contains("polar bear")