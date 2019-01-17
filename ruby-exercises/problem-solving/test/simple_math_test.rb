require_relative "test_helper"
require "./lib/simple_math"

class SimpleMathTest < Minitest::Test

  def test_it_can_add_two_numbers
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    assert_equal expected, result
  end

  def test_it_can_add_two_different_numbers
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_numbers
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_other_numbers
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    assert_equal expected, result
  end

  def test_it_can_multiply_two_numbers
    sm = SimpleMath.new

    result = sm.multiply(5,6)
    expected = 30

    assert_equal expected, result
  end


  def test_it_can_multiply_two_other_numbers
    sm = SimpleMath.new

    result = sm.multiply(3,11)
    expected = 33

    assert_equal expected, result
  end

  def test_it_can_divide_two_numbers
    sm = SimpleMath.new

    result = sm.divide(9, 3)
    expected = 3

    assert_equal expected, result
  end

  def test_it_can_divide_two_other_numbers
    sm = SimpleMath.new

    result = sm.divide(90, 9)
    expected = 10

    assert_equal expected, result
  end

end
