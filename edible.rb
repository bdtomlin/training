module Edible
  def eat
    puts "yum"
  end
end

class Berry
  include Edible
  
end

class Pastry
  include Edible
  
end

b = Berry.new

b.eat


p = Pastry.new

p.eat