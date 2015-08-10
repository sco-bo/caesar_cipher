puts 'Please enter your string to be coded'
	string = gets.chomp.split("")

puts 'Please enter your number key'
	key = gets.chomp.to_i

	string.map! do |i|
		i.ord
	end


	string.each_index {|i| string[i] = string[i] + key}.map! {|i| 
		if (i > 122)
			then i = i - 26
		elsif (90 < i && i < 97)
			then i = i - 26
		else
			i
		end
	}
	string.map! do |i|
		i.chr 
	end
	puts "Your coded word is #{string.join("")}"

puts 'Return back to original string? (Yes or No)'
response = gets.chomp.downcase
	if response == 'yes'
		string.to_s.split("")
		string.map! do |i|
			i.ord
		end
		string.each_index {|i| string[i] = string[i] - key}.map! {|i| 
			if (i < 97)
				then i = i + 26
			else 
				i 
			end
		}
		string.map! do |i|
			i.chr
		end
		puts string.join("")
	end