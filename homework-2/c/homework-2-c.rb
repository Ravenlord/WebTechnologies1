# ILV Web Technologies 1
# Exercise 2c
#
# Blocks, blocks, blocks
#
# Author: Richard Fussenegger, rfussenegger-mmt-m2012@fh-salzburg.ac.at
# Author: Markus Deutschl, mdeutschl-mmt-m2012@fh-salzburg.ac.at

def repeater(max = 3, benchmark = false)
	start_time = Time.now if benchmark
	for i in 1..max
		yield
	end
	puts "Time elapsed #{ ( Time.now - start_time ) * 1000 } milliseconds" if benchmark
end

repeater { puts "test1" }

puts "\n"

repeater(6){ puts "test2" }

puts "\n"

i = 0; repeater(10000, true){ puts "benchmark #{i += 1}" }