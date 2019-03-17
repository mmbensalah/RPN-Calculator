require 'pry'

class Calculator
  def initialize(integer_array = [], operator_array = [])
    @integer_array  = integer_array
    @operator_array = operator_array
  end

  def evaluate
    input = gets.chomp
    if ["+", "-", "/", "*"].any? { |operator| input.include? operator }
      @operator_array << input.to_sym
    else
      @integer_array  << input.to_i
    end
    @integer_array.zip(@operator_array).flatten.compact
    #how to execute?
  end
end

#Thought process after researching/understanding RPN and project requirements:
#1. First step  - Need to take in number and operator through CL(comes in as string)
#2. Second step - Need to differentiate b/w number and operator
#3. Third step  - Need to store numbers and operators after differentiating
#4. Fourth step - Need to zip arrays together to get integers and operators in
#                 every other pattern - basic calculator when array executed
#5. Fifth step - Need to create loop, so calculator can take in values until
#                exit

end
