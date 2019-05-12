def alphabetize(arr)

  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esp_hash = {}

  esperanto_alphabet.split(//).each_with_index do |letter, index|
      esp_hash[letter] = index
  end
  new_arr = []
  arr.sort_by do |phrase|
    phrase.split(%r{\s*}).map do |letter|
      esp_hash[letter]
    end
  end
end
