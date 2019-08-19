def starts_with_a_vowel?(word)
    if word.match(/^[AEIOU]|^[aeiou]/)
      true
    else
      false
    end
end

def words_starting_with_un_and_ending_with_ing(text)
   text.scan(/un\w+ing/)

end

def words_five_letters_long(text)
  my_text = text.split(" ")
  my_text.grep(/^\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  my_text = text.scan(/\w+/)[0]
  if (text.scan(/\./)) && (my_text == my_text.upcase)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/(\d+)-(\d+)-(\d+)/) || phone.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone.match(/\b([0-9]{7})\b/) || phone.match(/([0-9] ?){10}/)
    return true
  else
    return false
  end
end
