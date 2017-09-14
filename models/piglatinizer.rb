class PigLatinizer
  # attr_reader :text
  #
  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(word)
    do_not_convert = [] #[ "me", "to", "too", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if do_not_convert.include?(word)
      word
    # elsif vowels.include?(word[0]) && word[5] == "y"
    #   word << "way"
    # elsif vowels.include?(word[0]) && word[4] == "e"
    #   word << "way"
    # elsif vowels.include?(word[0]) && word[2] == "d"
    #   word << "way"
    # elsif vowels.include?(word[0]) && word[1] == "n"
    #   word << "way"
    elsif vowels.include?(word[0]) && word.length == 1
      word << "way"
    elsif vowels.include?(word[0])
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
