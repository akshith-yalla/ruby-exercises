require 'bcrypt'
module Authenticator
  puts "Module Authenticator activated"
  def create_hashed_password(password)
    BCrypt::Password.create(password)
  end

  def verify_hashed_password(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hashed_password(user_record[:password])
    end
    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_data|
      if user_data[:username] == username && verify_hashed_password(user_data[:password]) == password
        return user_data
      end
    end
    "Invalid credentials"
  end
end