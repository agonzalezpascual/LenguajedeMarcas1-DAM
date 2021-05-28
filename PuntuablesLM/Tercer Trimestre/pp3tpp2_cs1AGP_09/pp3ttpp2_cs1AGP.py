import sys

import mysql.connector

db = mysql.connector.connect(host="localhost", user="root", passwd="dam2021", database="bancosangre")

mycursor = db.cursor()

#mycursor.execute("CREATE TABLE Donantes (id smallint PRIMARY KEY auto_increment,dni VARCHAR(8), nombre VARCHAR(35), direccion VARCHAR(35), telefono CHAR(8), fechanac VARCHAR(10), sexo VARCHAR(10), gruposang VARCHAR(2), factorrh CHAR(1), activo VARCHAR(10))")

class Donante:

    def __init__(self, dni, nombre, direc, telf, fechanac, sexo, grup, fact, acti):
        self.__dni = dni
        self.__nombre = nombre
        self.__direc = direc
        self.__telf = telf
        self.__fechanac = fechanac
        self.__sexo = sexo
        self.__grup = grup
        self.__fact = fact
        self.__acti = acti

    def __str__(self):
        return f"Donante(DNI = {self.__dni}, Nombre = {self.__nombre}, Direccion = {self.__direc}, Teléfono = {self.__telf}, Fecha de Nacimiento = {self.__fechanac}, Sexo = {self.__sexo}, Grupo Sanguíneo = {self.__grup}, Factor RH = {self.__fact}, Activo = {self.__acti} )"


def introduceRegistro(dni, nombre, direc, telf, fechanac, sexo, grup, fact, acti):
    mycursor.execute(f"INSERT INTO DONANTES (id, dni, nombre, direccion, telefono, fechanac, sexo, gruposang, factorrh, activo) VALUES (null, '{dni}', '{nombre}', '{direc}', '{telf}', '{fechanac}', '{sexo}', '{grup}', '{fact}', '{acti}') ")
    db.commit()

def muestraTab():
    mycursor.execute(f"SELECT * FROM DONANTES")
    i = 0
    for x in mycursor:
        d = Donante(x[0],x[1],x[2],x[3],x[4],x[5],x[6],x[7],x[8])
        print(d)
        i +=1
    print(f"Hay un total de {i} Donantes en la tabla")

def consultaOmas():
    mycursor.execute(f"SELECT * FROM DONANTES where gruposang = '0' and factorrh = '+'")
    i = 0
    for x in mycursor:
        d = Donante(x[0],x[1],x[2],x[3],x[4],x[5],x[6],x[7],x[8])
        print(d)
        i += 1
    print(f"Hay un total de {i} Donantes O+ en la tabla")

def consultamuj():
    mycursor.execute(f"SELECT * FROM DONANTES where sexo = 'Mujer' or sexo = 'M'")
    i = 0
    for x in mycursor:
        d = Donante(x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8])
        print(d)
        i += 1
    print(f"Hay un total de {i} Donantes mujer en la tabla")

def modifsexo():
    mycursor.execute(f" UPDATE DONANTES set sexo = 'M' where sexo = 'Mujer'")
    mycursor.execute(f" UPDATE DONANTES set sexo = 'H' where sexo = 'Hombre'")
    db.commit()

def bajadon():
    mycursor.execute(f" DELETE FROM DONANTES where activo = 'false'")
    db.commit()

#introduceRegistro("33445566", "Mikel", "c/Barrio", "67812345", "13/12/1985", "Hombre", "0", "+", "true")
#introduceRegistro("66337755", "Alicia", "c/Barrio", "12345678", "31/5/1999", "M", "A", "+", "true")
#introduceRegistro("12345678", "Pepito", "c/Callejuela", "22233345", "2/3/1977", "Hombre", "B", "-", "false")
#muestraTab()
#consultaOmas()
#consultamuj()
#modifsexo()
#bajadon()
while(True):
    opc = input("\nMenú de opciones\n============\n1)Inserción de los datos de un donante\n2)Mostrar los datos de todos los donantes\n3)Consulta de los datos de los donantes O+\n4)Consulta de los datos de las donantes femeninas\n5)Modificación del contenido de sexo de los donantes\n6)Baja de donantes no activos\n7)Salir\n\n Opción:")

    if opc == "1":
        for i in range(5):
            dni = input("DNI del donante: ")
            nombre = input("Nombre del donante: ")
            direc = input("Dirección del donante: ")
            telf = input("Teléfono del donante: ")
            fechanac = input("Fecha de Nacimiento del donante: ")
            sex = input("Sexo del donante: ")
            grup = input("Grupo sanguíneo del donante: ")
            rh = input("RH del donante: ")
            act = input("Activo: ")
            introduceRegistro(dni,nombre,direc,telf,fechanac,sex,grup,rh,act)
            print(f"Se han introducido {i+1} donantes a la tabla")
    elif opc == "2":
        muestraTab()
    elif opc == "3":
        consultaOmas()
    elif opc == "4":
        consultamuj()
    elif opc =="5":
        modifsexo()
        print("Registros alterados")
    elif opc == "6":
        bajadon()
        print("Donantes inactivos eliminados")
    elif opc == "7":
        sys.exit(0)
    else:
        print("introduzca una opción válida")
