class Simplification
	def simplifier(exp)
		arr = []
		s = 0
		for i in (0...exp.length) do 
			if exp[i] == '+' or exp[i] == '-' or exp[i] == '*' or exp[i] == '/'
				arr.push(exp[s...i])
				arr.push(exp[i])
				s = i+1
			end
		end
		arr.push(exp[s...exp.length])
		#division op
		while arr.include?("/")
			indx = arr.index("/")
			if indx != 0 and indx != arr.length-1
				first = arr[indx-1].to_i
				second = arr[indx+1].to_i
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				ans = first / second
				arr.insert(indx-1,ans)
			end
		end
		#multipication op
		while arr.include?("*")
			indx = arr.index("*")
			if indx != 0 and indx != arr.length-1
				first = arr[indx-1].to_i
				second = arr[indx+1].to_i
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				ans = first * second
				arr.insert(indx-1,ans)
			end
		end
		#addition op
		while arr.include?("+")
			indx = arr.index("+")
			if indx != 0 and indx != arr.length-1
				first = arr[indx-1].to_i
				second = arr[indx+1].to_i
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				ans = first + second
				arr.insert(indx-1,ans)
			end
		end
		#subtraction op
		while arr.include?("-")
			indx = arr.index("-")
			if indx != 0 and indx != arr.length-1
				first = arr[indx-1].to_i
				second = arr[indx+1].to_i
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				arr.delete_at(indx-1)
				ans = first - second
				arr.insert(indx-1,ans)
			end
		end
		if arr.length == 1
			puts arr[0]
		else 
			puts "Invalid Expression"
		end
	end
end

smp_obj = Simplification.new
exp = gets.chomp
smp_obj.simplifier(exp)