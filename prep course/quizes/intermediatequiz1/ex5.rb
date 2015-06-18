while dividend > 0 do
  divisors << number / dividend if number % dividend == 0
  dividend -= 1
end
