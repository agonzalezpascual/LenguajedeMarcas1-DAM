import sys

import catch as catch
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

    def __str__(self):
        return f"Producto(id = {self.__id}, nombre: {self.__nombre}, código de barras: {self.__codigoBarra}, cantidad: {self.__cantidad}, precio: {self.__precio})"


def recogeFila(id):

        mycursor.execute(f"SELECT * FROM Productos WHERE id = {id}")
        for x in mycursor:
            p = Producto(x[0], x[1], x[2], x[3], x[4])
            print(p)



def recogeTabla():
    try:
        mycursor.execute("SELECT * FROM Productos")
        for x in mycursor:
            p = Producto(x[0], x[1], x[2], x[3], x[4])
            print(p)
    except:
        print("Asegurese de haber introducido datos válidos")


def introduceFila(nombrePro, codBarrPro, cantPro, precioProd):
    try:
        mycursor.execute(
            f"INSERT INTO Productos (id, nombre, codigoBarra, cantidad, precio) VALUES (null ,'{nombrePro}','{codBarrPro}',{cantPro},{precioProd})")
    except:
        print("Asegurese de haber introducido datos válidos")

def actualizaFila(id, nombrePro, codBarrPro, cantPro, precioProd):
    try:
        mycursor.execute(
            f"UPDATE Productos set nombre = '{nombrePro}', codigoBarra = '{codBarrPro}', cantidad = {cantPro}, precio = {precioProd} where id = {id}")
    except:
        print("Asegurese de haber introducido datos válidos")

def borraFila(id):
    try:
        mycursor.execute(f"DELETE FROM Productos where id = {id}")
    except:
        print("Asegurese de haber introducido datos válidos")


# mycursor.execute("CREATE TABLE Productos (id smallint PRIMARY KEY auto_increment, nombre VARCHAR(35), codigoBarra CHAR(8), cantidad smallint unsigned, precio float)")

"""nombrePro = "Piza"
codBarrPro = "12674478"
cantPro = 1
precioProd = 2.5"""

# mycursor.execute(f"INSERT INTO Productos (id, nombre, codigoBarra, cantidad, precio) VALUES (3,'{nombrePro}','{codBarrPro}',{cantPro},{precioProd})")
# introduceFila(4,"Pan","87654321",1,1.65)

db = mysql.connector.connect(host="localhost", user="root", passwd="", database="Ecommerce")

mycursor = db.cursor()
while(True):
    print("\n1) Consulta de un producto\n2) Consulta de todos los productos\n3) Inserción de un producto\n4) Actualización de un producto\n5) Borrado de un producto\n6) Salir\n")
    opc = input("Introduzca la opción: ")
    print()
    if opc == "1":
        PK = int(input("Introduzca la id del producto: "))
        recogeFila(PK)
        db.commit()
    elif opc == "2":
        recogeTabla()
        db.commit()
    elif opc == "3":
        try:
            #PK = int(input("Introduzca la id del producto: "))
            nomProd = input("Introduzca el nombre del producto: ")
            codBarr = input("Introduzca el código de barras del producto: ")
            contProd = int(input("Introduzca la cantidad del producto: "))
            precProd = float(input("Introduzca el precio del producto: "))
            introduceFila( nomProd, codBarr, contProd, precProd)
        except:
            print("\nAsegúrese de haber introducido datos válidos")

        db.commit()
    elif opc == "4":
        try:
            PK = int(input("Introduzca la id del producto: "))
            nomProd = input("Introduzca el nombre del producto: ")
            codBarr = input("Introduzca el código de barras del producto: ")
            contProd = int(input("Introduzca la cantidad del producto: "))
            precProd = float(input("Introduzca el precio del producto: "))
            actualizaFila(PK, nomProd, codBarr, contProd, precProd)
        except:
            print("\nAsegúrese de haber introducido datos válidos")
        db.commit()
    elif opc == "5":
        PK = int(input("Introduzca la id del producto: "))
        borraFila(PK)
        db.commit()
    elif opc == "6":
        print("Hasta la próxima")
        sys.exit(0)
    else:
        print("Introduzca una opción correcta\n")
