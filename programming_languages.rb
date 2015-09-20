require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
    value.each do |k, v|
      if new_hash[k]
        new_hash[k][:style] << key
      else
        v[:style] = [key]
        new_hash[k] = v
      end
    end
  end
  new_hash
end
