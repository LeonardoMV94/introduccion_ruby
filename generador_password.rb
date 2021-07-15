=begin

Se está desarrollando un módulo de software para poder generar contraseñas de forma
aleatoria y segura para usuarios debido a la cantidad de hackeos seguidos que han
aparecido en tu empresa. Es necesario introducir dejar que a través de la consola se
introduzca un nombre de usuario, y se genera una contraseña automáticamente,
almacenarlo en un Hash y por en en una lista. Al finalizar debería poder mostrar todos los
usuarios registrados con sus contraseñas.
Utilizar Hash para guardar la información.

=end
require 'securerandom'

puts "================================"
puts "Generador de contraseñas seguras"
puts "================================"

lista_usuarios = []

#funciones
def add_users_hash()
    puts "Ingrese un nombre de usuario o escriba salir"
    nombre_usuario = gets.chomp
    #puts "Hola #{nombre_usuario}\n" 
    return nombre_usuario
end

def generar_password()
    puts "Ingrese numero para el largo de contraseña [Solo numeros enteros]"
    largo_pass = gets.chomp.to_i    
    return password = SecureRandom.alphanumeric(largo_pass)
end

#logica del programa
comando = ""
while comando != "salir"
    nombre =    add_users_hash()
    if nombre == "salir"
        puts "Se ha salido de la aplicacion"
        break
    else
        password =  generar_password()
        usuario = { nombre: nombre, password: password}
        lista_usuarios << usuario
        puts "registro guardado!"
    end
    
end

#Mostrar datos guardados en Hash
puts "Nombre \t Password"
#puts lista_usuarios
for u in lista_usuarios
    puts "#{u[:nombre]} \t #{u[:password]}"
end

File.write("Lista_usuarios.txt",lista_usuarios)

comando = ""
while comando != "salir"
    puts "ingresa el nonbre del trabajador a buscar:"
    name_user = gets.chomp
    user_encontrado = lista_usuarios.select{ |u| u[:nombre] == name_user}

    #lista_usuarios.map {|u| "Hola Mundo"}
    #lista_usuarios.each {|u| }

    if user_encontrado.length == 0
        puts "usuario no existe"
    else
        puts user_encontrado
    end
=begin
    if u = lista_usuarios.find { |u| u['nombre'] == name_user }
        puts "#{u}"
    else
        puts "usuario no existe"
    end
=end
end
