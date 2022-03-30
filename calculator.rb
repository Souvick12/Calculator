class Calculator
	def get_input
		print "Enter the first value:"
		@a = gets.chomp.to_i
		print "Enter the second value:"
		@b = gets.chomp.to_i
	end
	def addition_op
		puts "Addition"
		get_input
		puts "#{@a} + #{@b} = #{@a+@b}"
	end
	def subtraction_op
		puts "Subtraction"
		get_input
		puts "#{@a} - #{@b} = #{@a-@b}"
	end
	def multipication_op
		puts "Multipication"
		get_input
		puts "#{@a} x #{@b} = #{@a*@b}"
	end
	def division_op
		puts "Division"
		get_input
		puts "#{@a} / #{@b} = #{@a.to_f/@b}"
	end
	def factorial_op
		puts "Factorial"
		print "Enter the value:"
		n = gets.chomp.to_i
		f = 1
		for i in 1..n do 
			f *= i 
		end
	    puts "#{n}! = #{f}"
	end
end

puts "  ----------"
puts "| CALCULATOR |"
puts "  ----------"
puts "1.Addition"
puts "2.Subtraction"
puts "3.Multipication"
puts "4.Division"
puts "5.Factorial"
puts "6.Exit"
cal_obj = Calculator.new
while true
	print "Enter your choice:"
	choice = gets.chomp.to_i
	case choice
		when 1
			cal_obj.addition_op
		when 2
			cal_obj.subtraction_op
		when 3
			cal_obj.multipication_op
		when 4
			cal_obj.division_op
		when 5
			cal_obj.factorial_op
		when 6
			puts "Exit"
			break
		else 
			puts "Invalid Input"
	end
end
