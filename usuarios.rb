texto = ""
texto2 = ''
num = 2
bool = false

lista = []
hash = {}

#videoclub

serie_1 = {
    nombre: "Sweet Tooth",
    formato: "Serie",
    temporadas: 8,
    sinopsis: "",
    genero: "Drama"
}

serie_2 = {
    nombre: "Resident Evil",
    formato: "Serie",
    temporadas: 1,
    sinopsis: "El mundo de zombies",
    genero: "Drama"
}

serie_3 = {
    nombre: "Atipical",
    formato: "Serie",
    temporadas: 4,
    sinopsis: "Adolecentes",
    genero: "Drama"
}

#agrupar las series en una lista
series = [
    serie_1,
    serie_2,
    serie_3
]

#salida
for serie in series
    puts "Nombre: #{serie[:nombre]} \t FOrmato: #{serie[:formato]}"
    puts "======="
end

#Salida
#puts "Nombre: #{serie1_1[:nombre]} \t FOrmato: #{serie_1[:formato]}"