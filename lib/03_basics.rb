def who_is_bigger(a, b, c)
    if(a == nil or b == nil or c == nil)
        return "nil detected"
    else
        if a > b and a > c
            return "a is bigger"
        elsif b > a and b > c
            return "b is bigger"
        else
            return "c is bigger"
        end
    end
end

# puts who_is_bigger(-13, -25, -5)

def reverse_upcase_noLTA(string)
    return string.reverse!.upcase.gsub(/[LTA]/, '')
end

# puts reverse_upcase_noLTA("Tries this at Home, Kids")

def array_42(numbers_array)
    return numbers_array.include?(42)
end

# puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])

# TODO: À FAIRE
def magic_array(array)

end

puts magic_array([1, 2, 3, 4, 5, 6])