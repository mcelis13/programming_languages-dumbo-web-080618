require 'pry'

def reformat_languages(languages)
  newLangObj = {}
  get_style = []
  language = ''
  type = ''
  type_value = ''

  languages.each do |style_name, style_hash|


    style_hash.each do |language_name, language_hash|
      language = language_name

      if language_name == :javascript
        get_style = [:oo, :functional]
      elsif language_name == :clojure || language_name == :erlang || language_name == :scala
        get_style = [:functional]
      else
        get_style = [:oo]
      end

      language_hash.each do |typeLabel, typeValue|
        type = typeLabel
        type_value = typeValue

        if !(newLangObj.has_key?(language))
          newLangObj[language] = {
            type => type_value,
            :style => get_style
          }
        end # end of if statement
      end# end of language_hash
    end # end of style_hash.each
  end #end of languages.each
newLangObj
end# end of function
