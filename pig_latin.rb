def pig_latin
	input = []
	arr = []
    a = ARGV.dup
    a.each_with_index {|x, i| a[i] = x.dup}
    a.each do |x|
    	input << x
    end
	input.each do |x|
		if x.start_with?('a','e','i','o','u')
		  x[0] = ''
		  x << 'ay'
		else 
		  consonant = x[0]
		  x.delete!(x[0])
		  x << "#{consonant}ay"
		end
		puts x
	end
	# p input
end
pig_latin