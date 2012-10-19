# ILV Web Technologies 1
# Exercise 2b
#
# Filter data with the methods of Enumerable.
#
# Author: Richard Fussenegger, rfussenegger-mmt-m2012@fh-salzburg.ac.at
# Author: Markus Deutschl, mdeutschl-mmt-m2012@fh-salzburg.ac.at

# Given data!
letters = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
languages = %w[Fortran Ada C C++ Java Scala Haskell Go C# Lisp Pascal Clojure Erlang PHP Python Ruby JRuby Perl]

# Prints a visual separator.
def print_sep(cols = 80)
	puts "\n"
	puts '-' * cols
	puts "\n"
end

print_sep

# List all even numbers up to 20.
puts (1..20).find_all{|i| i % 2 == 0 }

print_sep

# List all odd numbers up to 20.
(1..20).step(2){|i| puts i }

print_sep

# List in which all characters are doubled (e.g. aa, bb, cc, ...).
letters.each_entry{|v| puts v * 2 }

print_sep

# Count how many languages contain the letter "a".
puts languages.grep(/.*a.*/).size

print_sep

# Create a new list of all languages that contain the letter "a".
puts languages.grep(/.*a.*/)

print_sep