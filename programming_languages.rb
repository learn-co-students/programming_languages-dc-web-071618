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
  new_hash = {}

  languages.each do |oo_f, language|
    language.each do |name, info|
      new_hash[name] ||= info         #adds "info" - which is already in there as :type => "compiled"  (etc.)
      new_hash[name][:style] ||= []   #creates an empty array as the value of :style (if there's nothing there already)
      new_hash[name][:style] << oo_f  #pushes oo_f into the :style array - whcich takes care of getting both 'oo' and 'functional' into :javascript
    end
  end
  new_hash
end
