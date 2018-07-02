require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |name, info|
      new_hash[name] = {}
      new_hash[name][:style] = []
    end
  end
  
  languages.each do |style, language_hash|
    new_hash.each do |new_hash_name, new_hash_stats|
      if language_hash.keys.include?(new_hash_name)
        new_hash_stats[:style] << style
      end
    end
  end
  
  languages.each do |style, language_hash|
    language_hash.each do |language_name, style_hash|
      new_hash.each do |new_hash_name, new_hash_stats|
        if new_hash_name == language_name
          new_hash_stats[:type] = style_hash[:type]
        end
      end
    end
  end
  # binding.pry
  new_hash

end
