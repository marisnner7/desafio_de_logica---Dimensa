s = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
num_diamonds = 0
while s.include?("<") && s.include?(">")
    start = s.index("<")
    end_index = s.index(">", start)
    if end_index && end_index > start
        s = s[0...start] + s[start+1...end_index] + s[end_index+1..-1]
        num_diamonds += 1
    else
        break
    end
end
puts num_diamonds


