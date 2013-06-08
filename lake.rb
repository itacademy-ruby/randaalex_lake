module Flying
  def fly; 'flying' end
end
module Quacking
  def quack; 'quacking' end
end
module Swimming
  def swim; 'swimming' end
end

class Duck
  def fly; "can't fly" end
  def swim; "can't swim" end
  def quack; "can't quack" end
end

class RealDuck < Duck
  def name
    'REAL'
  end
  include Quacking
  include Swimming
  include Flying
end
class RubberDuck < Duck
  include Quacking
  include Swimming
end
class WoodDuck < Duck
  include Swimming
end

ducks ||= []
ducks << RealDuck.new
# ducks << RubberDuck.new
# ducks << WoodDuck.new

ducks.each do |duck|
  puts "#{duck.name} #{duck.swim}"
  puts "#{duck.class} #{duck.quack}"
  puts "#{duck.class} #{duck.fly}"

end