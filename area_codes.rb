dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
# Execution flow
loop do
  puts "Do you want to search the area code of a city?(Y/N)"
  answer = gets.chomp.downcase
  break if answer!="y"
  puts "Which city you want to search the code for?"
  city_names = get_city_names(dial_book)
  puts city_names
  puts "Enter city name"
  input_value = gets.chomp
  if(dial_book.include?(input_value)) 
    area_code = get_area_code(dial_book, input_value)
    puts "Area code for the city #{input_value} is #{area_code}"
  else
    puts "Enter a valid city name"
  end
end