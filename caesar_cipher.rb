puts 'Please enter your string to be coded'
	string = gets.chomp.split("")

puts 'Please enter your number key'
	key = gets.chomp.to_i

	if (key > 26) 
		key = key % 26
	end

	string.map! do |i|
		i.ord
	end

	string.map! {|i| i = i + key}.map! {|i| 
		if (i > 122)
			then i = i - 26
		elsif (90 < i && i < 97)
			then i = i - 26
		elsif (i > 96 && (i - key) < 91 && (i - key) > 64)
			then i = i - 26
		elsif (i < 65 )
			then i = 32
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
	
		string.map! {|i| i - key}.map! {|i| 
			if (90 < i && i < 97)
				then i = i + 26
			elsif ((i+key) > 96 && i < 91 && i > 64)
				then i = i + 26
			elsif (i < 65 && (i+key) < 91 && (i + key) > 64)
				then i = i + 26
			elsif (i < 65)
				then i = 32
			else
				i
			end
		}

		string.map! do |i|
			i.chr
		end

		puts string.join("")
		
	end
 
