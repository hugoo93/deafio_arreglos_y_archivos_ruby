alu_notas = File.open('./notas.data').readlines

alu_notas.map!{ |line| line.split(",")} 

def nota_mas_alta(array)
    [array[0], array.map{ |x| x.to_i}.max]
end

print nota_mas_alta(alu_notas[1])
puts