class Direccion:

    def __init__(self, codigo, calle, codPos, localidad, pais):
        self.__codigo = codigo
        self.__calle = calle
        self.__codPos = codPos
        self.__localidad = localidad
        self.__pais = pais

    def __str__(self):
        return f"{self.__pais} en la localidad de {self.__localidad} en la calle {self.__calle} con código postal {self.__codPos} y código interno {self.__codigo}"

class Cliente:

    def __init__(self, id, nombre, apellidos, NIF, cumpleaños, registro, direccion):
        self.__id = id
        self.__nombre = nombre
        self.__apellidos = apellidos
        self.__NIF = NIF
        self.__cumpleaños = cumpleaños
        self.__registro = registro
        self.__direccion = direccion

    def __str__(self):
        return f"El cliente {self.__nombre} {self.__apellidos} con NIF {self.__NIF} vive en {self.__direccion}, tiene un cumpleaños el {self.__cumpleaños} y se registró el {self.__registro}"

class Producto:

    def __init__(self, id, codigo, nombre, incorporacion, precio, peso):
        self.__id = id
        self.__codigo = codigo
        self.__nombre = nombre
        self.__incorporacion = incorporacion
        self.__precio = precio
        self.__peso = peso

    def __str__(self):
        return f"El producto {self.__nombre} con código interno {self.__id} y código de barras {self.__codigo} fué incorporado el {self.__incorporacion}, tiene un precio de {self.__precio} y pesa {self.__peso}"


class CarritoCompra:

    def __init__(self, id, listProd, cliente, fecha):
        self.__id = id
        self.__listProd = listProd
        self.__cliente = cliente
        self.__fecha = fecha

    def __str__(self):
        return f"El carrito {self.__id} con fecha {self.__fecha} contiene:\n{pasaProd(self.__listProd)}\ny pertenece a:\n{self.__cliente} "

def pasaProd(lista):
    productos = ""
    for i in lista:
        productos += i.__str__() + "\n"
    return productos

d = Direccion(10, "Dr Barraquer nº13", "41908", "Castilleja de Guzman", "España")
c = Cliente(1, "Alfonso", "Gonzalez Pascual", "54181345S", "09/01", "30/04/2020", d)
p = Producto(3, "0877666", "Patatas fritas", "30/04/2021", "1.25", "0.33")
p2 = Producto(2, "0874566", "Pizza de piña", "30/04/2021", "3.50", "0.4")
c = CarritoCompra(4, [p,p2],c,"30/04/2021")
#print(d)
#print(c)
#print(p)
print(c)