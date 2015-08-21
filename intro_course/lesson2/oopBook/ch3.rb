module Haulable

  def haul
    puts "This vehicle can haul objects."
  end

end

class Vehicle

  attr_accessor :color
  attr_reader :year, :model
  @@number_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_mph = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "#{@@number_of_vehicles} have been created so far"
  end

  def self.gas_mileage(gallons, miles)
    puts"Looks like this car gets #{miles / gallons} mpg"
  end

  def speed_up(number)
    puts "I want to go fast!"
    @current_mph += number
  end

  def current_speed
    puts "Your current speed is #{@current_mph}"
  end

  def brake(number)
    puts "Slowing down by #{number} mph."
    @current_mph -= number
  end

  def shut_off
    @current_mph = 0
    puts "The car is now shut off."
  end

  def spray_paint(color)
    self.color = color
    puts "Now your car is #{color}"
  end

  def age
    puts "Your #{self.model} is #{calculate_age} years old"
  end

  private

  def calculate_age
    Time.now.year - self.year
  end

end

class MyTruck < Vehicle

  include Haulable
  VEHICLE_TYPE = 'truck'

  def to_s
    "This truck is a #{self.year}, #{self.color} #{@model}"
  end

end

class MyCar < Vehicle

  attr_accessor :color
  attr_reader :year
  VEHICLE_TYPE = 'sedan'

  def to_s
    "This car is a #{self.year}, #{self.color} #{@model}"
  end

end

jaguar = MyCar.new(2015, 'white', 'jaguar')
jaguar.speed_up(50)
jaguar.current_speed
jaguar.speed_up(20)
jaguar.current_speed
jaguar.brake(45)
jaguar.current_speed
jaguar.brake(20)
jaguar.current_speed
jaguar.shut_down
puts jaguar.age
MyCar.gas_mileage(25, 450)
jaguar.spray_paint("yellow")
puts jaguar
MyCar.ancestors
MyTruck.ancestors
