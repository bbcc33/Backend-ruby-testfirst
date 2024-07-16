#write your code here
# def puts_ftc(fahrenheit)  
#   celsius = convert_fahrenheit_to_celsius(fahrenheit)
#   puts "#{fahrenheit}F is equal to #{celsius}C"
# end

def ftoc(fahrenheit)
    (fahrenheit - 32) * 5.0/9.0
end

# def puts_ctf(celsius)
#   fahrenheit = convert_celsius_to_fahrenheit(celsius)
#   puts "#{celsius}C is equal to #{fahrenheit}F"
# end

def ctof(celsius)
  (celsius * 9.0/5.0) + 32
end