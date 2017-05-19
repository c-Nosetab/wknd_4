# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator
  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

calc = FancyCalculator.new

p calc.add(1, 2)

p calc.subtract(5, 1)

p calc.multiply(20, 20)

p calc.divide(50, 5)

p calc.square_root(144)