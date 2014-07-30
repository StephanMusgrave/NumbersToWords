class Words

  UNIQUES =  { 19 => "nineteen", 18 => "eighteen", 17 => "seventeen", 
                    16 => "sixteen", 15 => "fifteen", 14 => "fourteen", 
                    13 => "thirteen", 12 => "twelve", 11 => "eleven",
                    10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 
                    6 => "six", 5 => "five", 4 => "four", 3 => "three", 
                    2 => "two", 1 => "one"}
  TENS =  { 90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 
            50 => "fifty", 40 => "fourty", 30 => "thirty", 20 => "twenty"}
  
  def self.ones(number)
    word_number = UNIQUES[number]
    word_number
  end

  def self.teens(number)
    word_number = UNIQUES[number]
    word_number
  end

  def self.convert(number)
    word = ""
    tens = number - (number % 10)
    ones = number % 10
    separator = " "
    case
      when number >= 100
        word << UNIQUES[number/100] + " hundred"
      when number >= 20
        word << TENS[tens]
        word << (separator + UNIQUES[ones]) if ones > 0
      when number >= 10
        word << teens(number)
      when number < 10
        word << ones(number)

      else
        word = "error"
    end
    word
  end

end

# Uncomment line below to run program:
# (1..100).each {|num| puts Words.convert(num)}