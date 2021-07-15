=begin

2. Dado un número n ingresado por el usuario, declarar una matríz nxn e imprimir el siguiente
resultado

Esto seria una matriz bimensional
=end

puts "ingresa un numero para imprimir la matriz"
numero = gets.chomp.to_i


espacio =   "|   |"
equis =     "| X |"
final =     ""

numero_aux = numero-1
for i in (1..numero)
    puts espacio * numero_aux + equis + final
    numero_aux = numero_aux - 1 
    final = final + espacio
end

