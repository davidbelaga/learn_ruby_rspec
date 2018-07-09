# write your code here

def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil
        return "nil detected"
    elsif  
        a >= b && a >= c
        return "a is bigger"
    elsif b >= a && a >= c
        return "b is bigger"
    else
        return "c is bigger"
    end
end

puts who_is_bigger(84, 42, 21)
puts who_is_bigger(42, 84, 21)
puts who_is_bigger(42, 21, 84)



def reverse_upcase_noLTA(string)
    string = string.to_s
    return string.reverse!.upcase.gsub('L', '').gsub('T', '').gsub('A', '')
end


puts reverse_upcase_noLTA("Tries this at Home, Kids")
puts reverse_upcase_noLTA("Ponies loves carrots")
puts reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn")


def array_42(array)
    nombre_42 = 0 
    array.each { |x|
    nombre_42 += 1 if (x.to_f == 42)
    }
    (nombre_42 > 0) ? (return true) : (return false)  
end

puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])
puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])


def magic_array(array)
    array_modified = array.flatten.reverse.collect { |n| n * 2 }.reject! {|m| m % 3 == 0 }.uniq.sort

end
print magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8])
