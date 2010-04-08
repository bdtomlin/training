require 'test/unit'

class Calculator
  def add(n1, n2)
    n1 + n2
  end

  def divide(n1, n2)
    n1.to_f/n2
  end
end


class CalculatorTest < Test::Unit::TestCase
  def test_that_calculator_adds
    calculator = Calculator.new
    result = calculator.add(2,2)
    expected = 4

    assert_equal = expected, result
  end

  def test_that_calculator_divides
    calculator = Calculator.new
    assert_equal 5, calculator.divide(10,2)
    assert_equal 0.5, calculator.divide(5,10)
  end

end


# calculator.divide(10,2) == 5
# calculator.divide(5,10) == 0.5
