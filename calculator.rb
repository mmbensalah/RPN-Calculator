require 'pry'

class Calculator
  attr_reader :input_arr
  
  def initialize(input_arr = [])
    @input_arr  = input_arr
  end

  def run(input)
    if    quit?(input) then exit_calc
    elsif operator?(input) then evaluate(input)
    else  stack(input)
    end
  end

  def quit?(input)
    input == 'q'
  end

  def exit_calc
    puts 'goodbye'
    exit
  end

  def operator?(input)
    ["+", "-", "/", "*"].any? { |operator| input.include? operator }
  end

  def evaluate(input)
    calculated_value = @input_arr[-2].send(input.to_sym, @input_arr[-1])
    @input_arr.pop(2)
    @input_arr << calculated_value
    puts "= #{@input_arr.last}"
  end

  def stack(input)
    @input_arr << input.to_i
  end

end

#Thought process after researching/understanding RPN and project requirements:
#1. First step  - Need to take in number and operator through CL(comes in as string)
#2. Second step - Need to differentiate b/w number and operator
#3. Third step  - Need to store numbers and operators after differentiating
#4. Fourth step - Need to zip arrays together to get integers and operators in
#                 every other pattern - basic calculator when array executed
#5. Fifth step  - Need to create loop, so calculator can take in values until
#                exit
#6. Sixth step  - Need to get rid of operator_array - will not work with RPN -
#                 instead need to execute last two digits after the introduction
#                 of every operator
#7.Seventh step - Add q to exit
#8. Eighth step - Refactor
#9. Ninth step  - Test
