class Calculator
	def get_input
		print "Enter the first value:"
		@a = gets.chomp.to_i
		print "Enter the second value:"
		@b = gets.chomp.to_i
	end
	def add
		puts "Addition"
		get_input
		puts "#{@a} + #{@b} = #{@a+@b}"
	end
	def sub
		puts "Subtraction"
		get_input
		puts "#{@a} - #{@b} = #{@a-@b}"
	end
	def mul
		puts "Multipication"
		get_input
		puts "#{@a} x #{@b} = #{@a*@b}"
	end
	def div
		puts "Division"
		get_input
		puts "#{@a} / #{@b} = #{@a.to_f/@b}"
	end
	def fac
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
o = Calculator.new
while true
	print "Enter your choice:"
	op = gets.chomp.to_i
	case op
		when 1
			o.add
		when 2
			o.sub
		when 3
			o.mul
		when 4
			o.div
		when 5
			o.fac
		when 6
			puts "Exit"
			break
		else 
			puts "Invalid Input"
	end
end
