# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

class InteractiveCalculator
    def initialize(terminal)
        @terminal = terminal
    end

    def add_meth
        @terminal.puts 'Enter the first number: '
        first_number = @terminal.gets.chomp
        @terminal.puts 'Enter the second number: '
        second_number = @terminal.gets.chomp
        result = first_number.to_i + second_number.to_i
        @terminal.puts "#{first_number} + #{second_number} = #{result}"
    end
end