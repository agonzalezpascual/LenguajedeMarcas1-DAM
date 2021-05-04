import mysql.connector

class Producto:

    def __init__(self, id, nombre, codigoBarra, cantidad, precio):
        self.__id = id
        self.__nombre = nombre
        self.__codigoBarra = codigoBarra
        self.__cantidad = cantidad
        self.__precio = precio

    @property
    def id(self):
        return self.__id

    @property
    def nombre(self):
        return self.__nombre

    @property
    def codigoBarra(self):
        return self.__codigoBarra

    @property
    def cantidad(self):
        return self.__cantidad

    @property
    def precio(self):
        return self.__precio

db = mysql.connector.connect(host="localhost",user="root",passwd="" ,database="Ecommerce")

mycursor = db.cursor()

#mycursor.execute("CREATE TABLE Productos (id smallint PRIMARY KEY auto_increment, nombre VARCHAR(35), codigoBarra CHAR(8), cantidad smallint unsigned, precio float)")

nombrePro = "Piza"
codBarrPro = "12674478"
cantPro = 1
precioProd = 2.5

#mycursor.execute(f"INSERT INTO Productos (id, nombre, codigoBarra, cantidad, precio) VALUES (3,'{nombrePro}','{codBarrPro}',{cantPro},{precioProd})")

mycursor.execute("SELECT * FROM Productos WHERE id = 1")

for x in mycursor:
    print(x)
db.commit()
