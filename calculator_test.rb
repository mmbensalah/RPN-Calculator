gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
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
end
