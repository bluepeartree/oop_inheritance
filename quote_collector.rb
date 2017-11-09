require './multilinguist.rb'

class Quote_Collector < Multilinguist

def initialize
  @list =["Start by doing what's necessary; then do what's possible; and suddenly you are doing the impossible.",
          "A day without sunshine is like, you know, night.",
          "Be yourself; everyone else is already taken.",
          "Expect problems and eat them for breakfast.",
          "Get your facts first, then you can distort them as you please."]
end

def list
  @list
end

def list=(list)
  @list=list
end


def get_input
  puts "I am a quote collector!"
  puts "please share a quote with me?"
  response=gets.chomp
  list << response
end

def multi_output
  puts "Please have a quote in turn!"
  puts say_in_local_language(@list.sample)
end

end

Loki = Quote_Collector.new
Loki.travel_to("Brazil")
Loki.get_input
Loki.multi_output
puts Loki.list
