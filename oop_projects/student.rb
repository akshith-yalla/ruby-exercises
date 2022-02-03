$LOAD_PATH << '.'
require 'authenticator'

class Student
  include Authenticator
  attr_accessor :first_name, :last_name, :email, :user_name, :password

  def initialize (first_name, last_name, user_name, email, password)
    @first_name = first_name
    @last_name = last_name
    @user_name = user_name
    @email = email
    @password = password
  end

  def to_s
    "First Name: #{@first_name}, Last Name: #{@last_name}, User Name: #{@user_name} Email: #{@email} Password: #{@password}"
  end
  
end

add_student_1 = Student.new("Akshith", "Yalla", "AkshithYalla", "akshith@gmail.com", "password@1234")
add_student_2 = Student.new("John", "Doe", "JohnDoe", "john@gmail.com", "password@123")

hashed_password = add_student_1.create_hashed_password(add_student_1.password)

p hashed_password
