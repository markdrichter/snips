a = {}
b = []

File.open(ARGV[0], "r") do |f|
	f.each_line do |line|
		a[line] = line
	end
end

File.open(ARGV[1], "r") do |f|
	f.each_line do |line|
		b << line
	end
end

b.each do |key|
	if a.has_key?(key)
		puts key
	end
end
