require_relative 'calculator'

calc = Calculator.new
puts 'Welcome to the RPN calculator. Hit enter after every input.'

loop do
  input = gets.chomp
  calc.run(input)
end
