a = 'hi there'
b = a
a.gsub!(' ', '_')
puts b

# This will change the output of b, because the caller has been mutated.
# The output will be 'hi_there'

a = 'hi there'
b = a 
a = [1, 2, 3]
puts b

# Nothing is changed here, because a's memory address hasn't been changed