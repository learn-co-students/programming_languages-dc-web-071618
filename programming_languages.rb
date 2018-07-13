def reformat_languages(languages)
  # your code here
  new_hash = []
  languages.each do |style, words|
    words.each do |language, type|
    if new_hash.has_key?(language)
      new_hash[language][:style]<<style
    else
      new_hash[language]=type
      new_hash[language][:style] = [style]
    end
  end
  new_hash
end
