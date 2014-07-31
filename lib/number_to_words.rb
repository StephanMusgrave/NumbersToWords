class Words

  UNIQUES =  {  90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 
                50 => "fifty", 40 => "fourty", 30 => "thirty", 20 => "twenty", 
                19 => "nineteen", 18 => "eighteen", 17 => "seventeen", 
                16 => "sixteen", 15 => "fifteen", 14 => "fourteen", 
                13 => "thirteen", 12 => "twelve", 11 => "eleven",
                10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 
                6 => "six", 5 => "five", 4 => "four", 3 => "three", 
                2 => "two", 1 => "one", 0 => ""
              }
  @separator = " "
  
  def self.ones(number)
    word_number = UNIQUES[number]
    word_number
  end

  def self.teens(number)
    word_number = UNIQUES[number]
    word_number
  end

  def self.tens(number)
    puts: puts "start self.tens"
    puts number
    word_number = UNIQUES[number - (number % 10)]
    puts "tens:", word_number
    puts UNIQUES[number % 10]
    word_number << (@separator + UNIQUES[number % 10]) if (number % 10) > 0
    puts word_number
    puts "end self.tens"
    # word_number << (@separator + ones(number % 10)) if (number % 10) > 0
    word_number
  end

  def self.hundreds
  end

  def self.convert(number)
    word = ""
    case
      when number >= 100
        word << UNIQUES[number/100] + " hundred"
      when number >= 20
        word << tens(number)
      when number >= 10
        word << teens(number)
      when number > 0
        word << ones(number)
      else
        word = "error"
    end

    word
  end

end

# Uncomment line below to run program:
(1..33).each {|num| puts Words.convert(num)}
# (1..1000000).each {|num| puts returns_number_in_words(num) }

