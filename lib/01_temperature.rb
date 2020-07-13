# CONVERTIT LA TEMPÉRATURE FAHRENHEIT EN CELSIUS => RETOURNE LA TEMPÉRATURE CELSIUS ARRONDI
def ftoc(temp_f)
    temp_c = (temp_f - 32) / 1.8
    return temp_c.round(2)
end

# puts ftoc(32)

# CONVERTIT LA TEMPÉRATURE CELSIUS EN FAHRENHEIT => RETOURNE LA TEMPÉRATURE FAHRENHEIT ARRONDI
def ctof(temp_c)
    temp_f = (temp_c * 1.8 + 32)
    return temp_f.round(2)
end

# puts ctof(0)