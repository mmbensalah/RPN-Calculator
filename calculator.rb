require 'pry'
class Calculator
  def evaluate
    integer_array = []
    operator_array = []
    input = gets.chomp
    if ["+", "-", "/", "*"].any? { |operator| input.include? operator }
      operator = input.to_sym
      operator_array << operator
    else
      integer_array << input.to_i
    end
  end
end

#Thought process after researching/understanding RPN and project requirements:
#1. First step  - Need to take in number and operator through CL(comes in as string)
#2. Second step - Need to differentiate b/w number and operator
#3. Third step  - Need to store numbers and operators after differentiating
