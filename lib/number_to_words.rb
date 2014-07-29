class Words

  WORDNUMBERS ={2 => "two", 1 => "one"}

  def self.convert(number)
    word = ""
    WORDNUMBERS.each do |key,value|
      (number / key).times {word << value; number -= key}
    end
    word
  end

end