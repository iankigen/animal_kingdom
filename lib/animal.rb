class Animal
  def initialize
    @kind = nil
    @state = nil
  end

  def eat(food)
    puts "#{@kind} eats #{food}"
  end

  def sleep
    @state = 'asleep'
  end

  def wake
    @state = 'awake'
  end
end

class Person < Animal
  @@people = []

  def initialize(age, gender, name)
    @kind = 'person'
    @age = age
    @gender = gender
    @name = name
    @@people << self
  end

  def eat
    puts "#{self.class} cannot eat a #{@kind}"
  end

  def greet
    puts "Hi, i'm #{@name}. I'm a #{@kind}, and i'm #{@age} years old"
  end

  def people
    @@people
  end

end

p1 = Person.new(21, 'Male', 'Ian')
p1 = Person.new(35, 'Male', 'Kevin')
p1.eat
p1.greet
p p1.people