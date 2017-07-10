puts "===================================="
puts "=            Ruby Calculator       ="
puts "===================================="

def get_number
  entered_number = nil
  loop do
    puts "Enter the a number: "
    entered_number = gets.chomp
    # Float will catch both Integer and Floats
    break if Float(entered_number) rescue false
    puts "You must enter an integer or a float!"
  end
  entered_number
end

def get_operator
  operation = nil
  loop do
    puts "Enter your desired operation - 1) Add, 2) Subtract, 3) Divide, 4)" \
    + " Multiply:"
    operation = gets.chomp
    break if %w(1 2 3 4).include? operation
    puts "You must enter the number for the operation - 1,2,3,or 4."
  end
  operation
end

def do_math(num1, num2, operator)
  # Decide if floats are entered or appropriate in case of division
  if num1.include?('.') || num2.include?('.') || operator == "3"
    num1 = num1.to_f
    num2 = num2.to_f
  else
    num1 = num1.to_i
    num2 = num2.to_i
  end
  case operator
  when '1' then puts "#{num1} + #{num2} = #{num1 + num2}."
  when '2' then puts "#{num1} - #{num2} = #{num1 - num2}."
  when '3' then puts "#{num1} / #{num2} = #{num1 / num2}."
  when '4' then puts "#{num1} * #{num2} = #{num1 * num2}."
  end
end

loop do
  first_number = get_number
  second_number = get_number
  operation = get_operator
  do_math(first_number,second_number,operation)
  puts "Do another operation?(y/n):"
  break if gets.chomp.downcase == 'n'
end





