import mysql.connector

from datetime import date

today = date.today()

db = mysql.connector.connect(host="localhost", user="root", passwd="", database="proy3te5")

mycursor = db.cursor()

#mycursor.execute("CREATE TABLE Productos (id smallint PRIMARY KEY auto_increment, nombre VARCHAR(35), codigoBarra CHAR(8), cantidad smallint unsigned, precio float)")

db.commit()