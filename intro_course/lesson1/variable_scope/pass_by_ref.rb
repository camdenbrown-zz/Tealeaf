def take_arr(arr)
  arr.flatten
end

new_arr = [1, 2, [3, 4], 5]
take_arr(new_arr)
p new_arr

# Nothing will happen because the array isn't being changed outside the method
# If you add a bang, then the output will be changed. 