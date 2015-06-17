def no_mutate(arr)
	arr.uniq
end

my_arr = [1, 2, 2, 3]
no_mutate(my_arr)
puts my_arr