require './multilinguist.rb'

class Math_Genius < Multilinguist

def initialize
  @list =[]
end

def list
  @list
end

def list=(list)
  @list=list
end


def get_input
  puts "I am a Math GENIUS!"
  puts "How many numbers would you like to add up?"
  response=gets.to_i
  response.times do
    puts "Please enter a number: "
    number = gets.to_i
    list << number
  end
end

def sum(list)
  sum = 0
  list.each do |number|
    sum = sum + number
  end
  return sum
end

def multi_output
  puts say_in_local_language("The total of #{list} is #{sum(list)}")
end

end

Tony  = Math_Genius.new
Tony.travel_to("Brazil")
Tony.get_input
Tony.multi_output
