NEWENGLAND = ["conn", "RI", "MA"]

def new_england_states?(state)
  return NEWENGLAND.include? state
end

puts new_england_states? "ME"
   
  