def starts_with_a_vowel?(word)
  if word.match(/\A[aeiou]|\A[AEIOU]/)
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/\b[A-Z]\w*\W\s/) 
    return true
  elsif text.match(/\b[a-z]\w*\W\s/)
    return false
  elsif text.match(/\b[A-Z]\w*\s/)
  end
end

def valid_phone_number?(phone)
  # valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
  if phone.match(/[0-9]{10}/) || phone.match(/\([0-9]{3}\)[0-9]{3}-[0-9]{4}/) || phone.match(/[0-9]{3}\s[0-9]{3}\s[0-9]{4}/) || phone.match(/\([0-9]{3}\)[0-9]{7}/)
    return true
  else
    return false
  end
end
