gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
  def not_used
  end
  
  def test_it_evaluates_two_numbers
    cal = Calculator.new
    cal.run("1")
    cal.run("2")
    assert_equal [1, 2], cal.input_arr
    cal.run("+")
    assert_equal [3], cal.input_arr
  end

  def test_it_evaluates_five_numbers
    cal = Calculator.new
    cal.run("5")
    cal.run("1")
    cal.run("2")
    cal.run("+")
    cal.run("4")
    cal.run("*")
    cal.run("+")
    cal.run("3")
    cal.run("-")
    assert_equal [14], cal.input_arr
  end

  def test_it_continues_after_invalid_operator_entry
    cal = Calculator.new
    cal.run("5")
    cal.run("+")
    assert_equal [5], cal.input_arr
    cal.run("2")
    cal.run("+")
    assert_equal [7], cal.input_arr
  end
end
