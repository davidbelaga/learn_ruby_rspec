#write your code here

def time_string(x)
    return Time.at(x).utc.strftime("%H:%M:%S")
end

puts time_string(0)
puts time_string(12)
puts time_string(66)
puts time_string(4000)