#OOP in Ruby
# 1. classes and objects
# 2. classes contain behaviors
# 3.

class Dog
  attr_accessor :name, :height, :weight

  @@count = 0

  def self.total_dogs
    puts "Total number of dogs: #{@@count}"
  end

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
    @@count += 1
  end

  def speak
    puts 'Bark!'
  end

  def info
    puts "#{name} is #{height} ft and weighs #{weight} pounds"
  end

  def update_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end
end

teddy = Dog.new('teddy', 5, 55)
teddy.speak
teddy.info
teddy.update_info('Stan', 7, 70)
teddy.info

Dog.total_dogs
