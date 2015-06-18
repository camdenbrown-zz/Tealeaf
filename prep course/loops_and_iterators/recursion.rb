def countdown (answer)
  puts answer
  if answer > 0
    countdown(answer - 1)
  end

end

countdown(10)

