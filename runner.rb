require_relative 'calculator'
require 'pry'

calc = Calculator.new

loop do
  calc.evaluate
end
