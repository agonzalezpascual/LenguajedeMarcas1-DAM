"""class Pájaro:
    def __init__(self):
        print("Pájaro operativo")
    def yTúDeQuenEres(self):
        #Frase1
        print("Yo, pájaro")
    def nadar(self):
        print("Nada más rápido")

class Pingüino(Pájaro):
    def __init__(self):
        super().__init__()
        #Frase 2
        print("Pingüino operativo")
    def yTúDeQuenEres(self):
        print("Yo, pingüino")
    def correr(self):
        print("Corre más rápido")

#Frase 3
pingu = Pingüino()
#Frase 4
pingu.yTúDeQuenEres()
pingu.nadar()
pingu.correr()"""

class Vehiculo:
    def __init__(self,nombre,capacidad,kilometraje):
        self.nombre = nombre
        self.capacidad = capacidad
        self.kilometraje = kilometraje

    def tarifa(self):
        return self.capacidad*100

class Bus(Vehiculo):
    def tarifa(self):
        total = super().tarifa()
        total += total*10/100
        return total


busEscolar = Bus("Volvo NarajoSL", 50, 1200)
print("El alquiler del autobús sale:", busEscolar.tarifa())