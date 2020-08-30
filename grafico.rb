arr = [5, 3, 2, 5, 10]

arr.each do |x|
    print "|" + "**" * x
    print "\n"
end

print ">" +  "--" * arr.max
print "\n"

for i in (1..arr.max)
    print "#{i} "
end
puts