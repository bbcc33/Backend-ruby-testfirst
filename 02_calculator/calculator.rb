#write your code here

# module Calculator

  # def self.add(one, two)
  def add(one, two)
    one + two 
  end

  def subtract(one, two)
    one - two
  end

  def sum(array)
    total = 0
    array.each do |number|
      total += number
    end
    total
  end

  # puts Calculator.add(5,3)
  # puts Calculator.subtract(5,4)
  # puts Calculator.sum([3, 4, 54, 5, 3, 3])