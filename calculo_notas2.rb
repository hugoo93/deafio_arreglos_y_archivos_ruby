alu_notas = File.open('./notas.data').readlines

alu_notas.map!{ |line| line.split(",")} 

def nota_mas_alta(data)
    mayor = []
    data.each do |line|
        mayor.push([line[0], line.map{|x| x.to_i}.max])
    end
    return mayor
end

pp nota_mas_alta(alu_notas)