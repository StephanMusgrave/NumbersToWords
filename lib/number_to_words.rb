class Words

  ONESANDTEENS =  { 19 => "nineteen", 18 => "eighteen", 17 => "seventeen", 
                    16 => "sixteen", 15 => "fifteen", 14 => "fourteen", 
                    13 => "thirteen", 12 => "twelve", 11 => "eleven",
                    10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 
                    6 => "six", 5 => "five", 4 => "four", 3 => "three", 
                    2 => "two", 1 => "one"}
  TENS =  { 90 => "", 80 => "eighty", 70 => "seventy", 60 => "sixty", 
            50 => "fifty", 40 => "fourty", 30 => "thirty", 20 => "twenty"}
  
  def self.convert(number)
    word = ""
    case number
      when number < 20
        word = ONESANDTEENS[number]
      when number >= 20
        word = TENS[number]
      else
        word = "error"
    end
    word
  end

end