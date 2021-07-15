=begin

1. En su empresa, se están buscando iniciativas para poder hacer que sus empleados
memoricen nuevos términos técnicos que necesitan saber para poder aplicar a una
certificación. Para ellos usted propone realizar un juego de ahorcado seleccionando 10
palabras que se consideren importantes, con las reglas básicas que son:
La palabra secreta se debe mostrar con guiones para conocer la cantidad de letras que
se tiene.
Si se equivocan en una letra debe descontar una vida de las 5 que se tiene.
Cuando se adivina una letra, se debe mostrar la posición de la letra en donde se
encuentran.
Cuando se adivine la palabra, se deberá mostrar un mensaje de felicitaciones y

=end

palabras = [
    "hola",
    "certificado",
    "empresa",
    "ruby",
    "amareto",
    "programacion",
    "javascript",
    "github",
    "terminal",
    "sistemas"]
vidas = 5
guion = ""

palabra_aleatoria_index = rand(palabras.length)
palabra_aleatoria = palabras[palabra_aleatoria_index]
numero_letras_palabra = palabra_aleatoria.length

numero_letras_palabra.times do
    guion= guion + "_"
end
print "===========================================\n"
print "Bienvenido al juego del ahorcado \n"
while guion != palabra_aleatoria
    print "===========================================\n"
    print "numero de vidas #{vidas} \n"
    print "la palabra secreta tiene " , palabra_aleatoria.length , " letras! adivina cual es !! \n"
    print "#{guion} \n"
    print "ingresa una letra que creas que contenga la palabra ...\n"

    letra = gets.chomp
    if palabra_aleatoria.include? letra
        print "si contiene la letra \n"
        letra = letra.chr
        char_aux = palabra_aleatoria.scan(letra)
        #guion[char_aux] = palabra_aleatoria[char_aux]
        #print "#{char_aux[0]}"
        indices_letra_palabra = palabra_aleatoria.enum_for(:scan, /(?=#{letra})/).map do
            Regexp.last_match.offset(0).first
        end        
        #print "#{indices_letra_palabra} \n"
        for i in indices_letra_palabra
            guion[i] = palabra_aleatoria[i]
        end
        #print "#{guion} \n"
        if guion == palabra_aleatoria
            print "FELICIDADES !! HAZ GANADO EL JUEGO !!"
            break
        end
        system ('cls')
    else
        vidas = vidas -1
        if vidas == 0
            print "ya no te quedan vidas, haz pedido :C"
            break
        end
        print "no lo contiene, vuelve a intentarlo, te quedan #{vidas} vidas \n"
    end
end


