ventas = File.open('./ventas_base.db').read

ventas_split = ventas.split(',')

ventas_datos = ventas_split.map{ |venta| venta.to_i }

ventas_semestre1 = ventas_datos.take(6)
ventas_semestre2 = ventas_datos.drop(6)

ventas_sem1 = ventas_semestre1.map{|valor| valor * 1.1}
ventas_sem2 = ventas_semestre2.map{|valor| valor * 1.2}

# print ventas_sem1
# puts
# print ventas_sem2
# puts

sum1 = 0
ventas_sem1.each do |ele|
    sum1 += ele
end
prom1= sum1/ventas_sem1.count
# puts prom1.round(2)

sum2 = 0
ventas_sem2.each do |ele|
    sum2 += ele
end
prom2= sum2/ventas_sem2.count
# puts prom2.round(2)

prom = "#{prom1.round(2)}\n#{prom2.round(2)}"

File.write('./resultados.data', prom)