def below_absolute_zero?(temp, measure)
    if measure == "F"
        return true if temp < -460
    elsif measure == "C"
        return true if temp < -273
        return false
    end
end
def convert(temp,measure = "F")
    return "Temperature must be an integer" unless temp.class == Integer
    return "Temperature below Absolute Zero" if below_absolute_zero?(temp,measure)
    if(measure = "F")
        return(5.0/9.0)*(temp-32)
    else
        return(9.0/5.0)*(temp) + 32
    end
end

puts convert(32)          
puts convert(50)          
puts convert(212)
puts convert(0, "C")
puts convert(10, "C")
puts convert(100, "C")
puts convert(-280, "C")