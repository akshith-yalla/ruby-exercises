puts "Simple Calculator"
25.times{print "="}
puts
puts "Enter first number"
num_1 = gets.chomp
puts "Enter second number"
num_2 = gets.chomp

puts "Sum of the num_1 and num_2 is #{num_1.to_i + num_2.to_i}"
puts "Differnce of the num_1 and num_2 is #{num_1.to_i - num_2.to_i}"
puts "Multiplication of the num_1 and num_2 is #{num_1.to_i * num_2.to_i}"
puts "Division of the num_1 and num_2 is #{num_1.to_i / num_2.to_i}"
puts "Modulus of the num_1 and num_2 is #{num_1.to_i % num_2.to_i}"
