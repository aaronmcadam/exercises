# Write a program that prints the numbers from 1 to 100. But for multiples of
# three print "Fizz" instead of the number and for the multiples of five print
# "Buzz". For numbers which are multiples of both three and five print
# "FizzBuzz".

class FizzBuzz
  def initialize(limit: 100)
    @limit = limit
  end

  def call
    (1..limit).collect { |number| value_for(number) }
  end

  private

  attr_reader :limit

  def value_for(number)
    return "FizzBuzz" if number % 15 == 0
    return "Buzz" if number % 5 == 0
    return "Fizz" if number % 3 == 0
    number
  end
end
