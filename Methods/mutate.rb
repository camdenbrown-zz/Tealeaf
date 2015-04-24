
a = [1,2,3]

def mutate(array)
array.pop
end


p "Before mutating method: #{a}"
mutate(a)
p "Afer mutating method: #{a}"
