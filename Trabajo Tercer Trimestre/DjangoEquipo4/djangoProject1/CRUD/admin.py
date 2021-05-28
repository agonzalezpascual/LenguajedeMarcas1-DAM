from django.contrib import admin


from CRUD.models import Coches, Comerciales
# Register your models here.

class CochesAdmin(admin.ModelAdmin):
    list_display = ("CNombre", "Cfabricante", "CPotencia", "Ccentimetros", "CColor", "CMxPas", "CcodComercial_id")
    search_fields = ("CNombre", "Cfabricante", "CcodComercial_id")


class ComercialesAdmin(admin.ModelAdmin):
    list_display = ("codComercial", "nombre", "apellidos", "fechaInc", "comision")
    list_filter = ("fechaInc",)
    date_hierarchy = "fechaInc"



admin.site.register(Coches, CochesAdmin)
admin.site.register(Comerciales, ComercialesAdmin)

