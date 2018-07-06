require "pry"

# def reformat_languages(languages)
#   target_hash = {}
#
#   languages.each do |oo_f, lang|
#     lang.each do |prgrm_lang, fact|
#       fact.each do |a, b|
#         target_hash[prgrm_lang] = {a => b, :style => [oo_f]}
#       end
#     end
#   binding.pry
#   end
#   target_hash
# end

def reformat_languages(languages)
  new_languages = {}

  languages.each do |type, language|
    language.each do |name, info|
      new_languages[name] ||= info
      new_languages[name][:style] ||= []
      new_languages[name][:style] << type
    end
  end
  new_languages
end
