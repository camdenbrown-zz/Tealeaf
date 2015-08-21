# Namespacing can be used in large projects to help organize ex: Workable::Jobs
# Workable is the module and Jobs is the class

class Animal
  attr_accessor :name

  def initialize(n)
    @name = n
  end

  def eat
    puts "#{name} is eating"
  end

end

class Mammal < Animal

  def warm_blooded?
    true
  end

end

module Swimmable

  def swim
    puts "I'm swimming"
  end

end

module Fetchable

  def fetch
    puts "#{name} is fetching"
  end

end

class Dog < Mammal
  include Swimmable
  include Fetchable

  def fetch
    puts "#{name} is fetching!"
  end

end

class Cat < Mammal

end

totorro = Cat.new('Totorro')
puts totorro.name
totorro.eat

teddy = Dog.new('Teddy')
puts teddy.name
teddy.eat
teddy.fetch
teddy.swim
puts teddy.warm_blooded?
