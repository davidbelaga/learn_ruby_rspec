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

def start_of_word(msg, nb)
	msg.slice(0, nb)
end

def first_word(msg)
	msg.split(" ").first
end

def titleize(msg)
	msg = msg.split(" ")					# On transforme la string msg en un array dont chaque élément est un mot
	i = 0
	msg.each do |word|
		if word == "the" || word == "and"	# On capitalize, sauf pour les mots de liaison
		else
			msg[i] = word.capitalize
		end
		i = i + 1
	end
	msg[0] = msg[0].capitalize				# On capitalize dans tous les cas le premier mot
	msg = msg.join(" ")						# On retransforme l'array en string
end


=begin

def titleize(title)
    
    words = title.split(/\W+/)
    first_word = words[0].capitalize!

    petit_mot = ["a", "the", "this", "an", "with", "that", "those", "these"]
    
    for word in words[1...words.size]
        cap_words = ""
        if !petit_mot.include?word
            cap_words += word.capitalize!
        else
            cap_words += word
        end
    end
end 

puts title.split.map(&:capitalize).join(' ')
    
    
end

print titleize("the bridge over the river kwai")

=end
