#write your code here

def echo(something)
    return something.to_s
end

puts echo("hello")

def shout(something)
    return something.to_s.upcase
end

def repeat(something, x = 2)
    
   (something.to_s + " ") * (x - 1) + something
end

puts repeat("hello", 3)

def titleize(title)
#    words = title.split(/\W+/)
 #   first_word = words[0].capitalize!

#    petit_mot = ["a", "the", "this", "an", "with", "that", "those", "these"]
#    
#    for word in words[1...words.size]
#        cap_words = ""
#        if !petit_mot.include?word
#            cap_words += word.capitalize!
#        else
#            cap_words += word
#        end
#    end
#end 

puts title.split.map(&:capitalize).join(' ')
    
    
end

print titleize("the bridge over the river kwai")
