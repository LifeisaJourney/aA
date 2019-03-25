def ftoc(fahrenheit)
    celcius = (fahrenheit - 32.0) * 5/9.0 
    return celcius
end

def ctof(celcius)
    fahrenheit = (celcius * 9/5.0) + 32.0
    return fahrenheit
end