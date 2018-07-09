#write your code here

######## Sous-fonctions #######


def add_ay(string)
	string.insert(-1, 'ay')									# On ajoute "ay" à la fin du mot
end

def put_first_letter_to_the_end(string)
	string.insert(-1, string[0]).slice(1..-1)				# On déplace la première lettre à la fin
end

def deal_with_two_words(string)
	temp = string.split(" ")								# On va traiter chaque mot séparément
	temp[0] = add_ay(temp[0])								# On traduit le 1er mot
	temp[1] = add_ay(put_first_letter_to_the_end(temp[1]))	# On traduit le 2e mot
	temp.join(" ")											# On rassemble les mots
end

def deal_with_four_words(string)
	temp = string.split(" ")								# Même topo, mais pour 4 mots
	temp[0] = add_ay(put_first_letter_to_the_end(put_first_letter_to_the_end(temp[0])))
	temp[1] = add_ay(put_first_letter_to_the_end(put_first_letter_to_the_end(temp[1])))
	temp[2] = add_ay(put_first_letter_to_the_end(put_first_letter_to_the_end(temp[2])))
	temp[3] = add_ay(put_first_letter_to_the_end(temp[3]))
	temp.join(" ")
end



######## Fonction principale #######


def translate(string)
	if string.split(" ").length == 1						# Code exécuté si un seul mot				
		if string[0] =~ /[aeiou]/							# Exécuté si 1ère lettre = voyelle
			add_ay(string)
		else												
			if string[1] =~ /[aeiou]/ 						# Exécuté si 1ère lettre = consonne	
				add_ay(put_first_letter_to_the_end(string.gsub("qu", "q"))).gsub("q", "qu") 				# .gsub permet de transformer "qu" en "q" avant traduction, et de revenir à qu après traduction
			else											# Exécuté si 1ère et 2e lettre = consonne	
				if string[2] =~ /[aeiou]/
					add_ay(put_first_letter_to_the_end(put_first_letter_to_the_end(string.gsub("qu", "q")))).gsub("q", "qu")
				else										# Exécuté si 1ère, 2e et 3e lettre = consonne	
					add_ay(put_first_letter_to_the_end(put_first_letter_to_the_end(put_first_letter_to_the_end(string))))
				end
			end
		end

	elsif string.split(" ").length == 2						# Code exécuté si un deux mots
		deal_with_two_words(string)

	elsif string.split(" ").length == 4						# Code exécuté si un quatre mots
		deal_with_four_words(string)			
	end
end	
=begin
def translate(something)
    array_of_words = something.split(/\W+/)
    array_in_array = []
    
    array_of_words.each do |word|
         array_in_array << word.split("")
    end
    
    
    array_in_array.each do |mot|
        
       if mot[0] == "a" ||  mot[0] == "e" || mot[0] == "i" || mot[0] == "o" || mot[0] == "u"
            mot[0] = ""
       end
    
    end 
    
   
    
end

print translate("the quick brown fox")

=end