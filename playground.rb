puts "hello world"


require 'bcrypt'
 
puts my_password = BCrypt::Password.create("my password")
 
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 12
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false
 
puts my_password = BCrypt::Password.new(my_password)
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false