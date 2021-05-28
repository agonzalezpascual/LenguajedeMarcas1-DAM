from django.db import  models

class Comerciales (models.Model):
     codComercial = models.IntegerField(verbose_name="Código de comercial", primary_key=True, default=1)
     nombre = models.CharField(max_length=30, verbose_name="Nombre", default='aaa')
     apellidos = models.CharField(max_length=30, verbose_name="Apellidos", default='')
     fechaInc = models.DateField(max_length=10, verbose_name="Fecha incorporación", default=1)
     comision = models.CharField(max_length=4, verbose_name="Comisión", default='')
     
     def __str__(self):
          return '%s: %s %s' % (self.codComercial, self.nombre, self.apellidos)

class Coches(models.Model):
     Uid = models.AutoField(primary_key=True)
     CNombre = models.CharField(max_length=100, verbose_name="Modelo")
     Cfabricante = models.CharField(max_length=100, verbose_name="Fabricante")
     CPotencia = models.FloatField(max_length=100, verbose_name="Potencia")
     Ccentimetros = models.FloatField(max_length=100, verbose_name="Centimetros")
     CColor = models.CharField(max_length=100, verbose_name="Color")
     CMxPas = models.IntegerField(verbose_name="Pasajeros")
     Cpeso = models.FloatField(max_length=100, verbose_name="Peso")
     CcodComercial = models.ForeignKey(Comerciales, on_delete=models.CASCADE, verbose_name="", default='')

     def __str__(self):
          return '%s: %s' % (self.CcodComercial, self.CNombre)

class Meta:
    db_table="coches"
