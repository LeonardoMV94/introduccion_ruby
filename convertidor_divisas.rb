#convertidor de divisas

=begin

3. Estamos desarrollando un módulo de compras para su página de ventas, y se dió cuenta
que muchas de las personas que ingresan lo hacen desde diferentes países, por lo que dejar
un solo precio de un solo país no lo hace muy práctico. Utilizando los métodos gets y puts,
se deben generar la siguiente opciones para que los usuarios introduzcan un valor y lo
transforme en otro, como se muestra en la tabla:

=end
def usd_to_cop(usd)
    usd * 3792.5
end

def clp_to_usd(clp)
    clp * 0.0013
end

def usd_to_soles(usd)
    usd * 3.96
end

valorx=0
valor=0
puts "========================= \n"
puts "Modulo venta de divisa\n"
puts "ingrese la divisa que quiere comprar"
puts "[1] Dolares a Pesos Colombianos"
puts "[2] Peso Chileno a dolar"
puts "[3] Dolar a Soles"
puts "Escoga la opcion [1] [2] [3]"
opcion_num = gets.chomp.to_i

case opcion_num
when 1 
    puts "ingrese cuantos dolares quiere vender para obtener Pesos Colombianos"
    valor = gets.chomp.to_i
    valorx = usd_to_cop(valor)
    puts "va a obtener $#{valorx} pesos Colombianos"
when 2
    puts "ingrese cuantos CLP quiere vender para obtener USD"
    valor = gets.chomp.to_i
    valorx = clp_to_usd(valor)
    puts "va a obtener $#{valorx} USD"
when 3
    "ingrese cuantos USD quiere vender para obtener Soles"
    valor = gets.chomp.to_i
    valorx = usd_to_soles(valor)
    puts "va a obtener $#{valorx} Soles"
end



