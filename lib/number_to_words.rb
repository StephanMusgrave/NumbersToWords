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
  @separator  = " "
  @thousands  = 0
  @hundreds   = 0
  @tens       = 0
  @units      = 0
  
  def self.ones(number)
    word_number = ""
    word_number += UNIQUES[number]
    word_number
  end

  def self.teens(number)
    word_number = ""
    word_number += UNIQUES[number]
    word_number
  end

  def self.tens(number)
    word_number = ""
    word_number += UNIQUES[number - (number % 10)]
    word_number += (@separator + ones(number % 10)) if (number % 10) > 0
    word_number
  end

  def self.hundreds(number)
    word_number = ""
    word_number += (ones(number/100) + " hundred")
    word_number += (@separator + ones(number % 100)) if (number % 100) > 0
    word_number
  end

  def self.split(number)
    @thousands = number/1000
    @hundreds = (number%1000)/100
    @tens = ((number%1000)%100)/10
    @units = ((number%1000)%100)%10
    # print number,@separator,@thousands,@separator,@hundreds,@separator,@tens,@separator,@units
  end
  
  def self.convert(number)
    result = ""
    split(number)
    case
      when number > 1000
      when number >= 100
        result += UNIQUES[@hundreds] + " hundred"
        result += UNIQUES[@tens * 10] if @tens > 2
        result += (" and " + UNIQUES[@units]) if @units > 0
      when number >= 20
        result += UNIQUES[@tens * 10]
        result += (@separator + UNIQUES[@units]) if @units > 0
      when number >= 10
        result += UNIQUES[number]
      when number > 0
        result += UNIQUES[number]
      else
        result = "error"
    end
    result
  end

  

end

# Uncomment line below to run program:
 # (1..150).each {|num| puts Words.convert(num)}
(1..123).each {|num| puts Words.convert(num)}
