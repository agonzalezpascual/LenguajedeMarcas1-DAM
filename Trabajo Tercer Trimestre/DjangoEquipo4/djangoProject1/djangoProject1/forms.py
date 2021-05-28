from django import forms
from CRUD.models import Coches


class CochesForm(forms.ModelForm):
    class Meta:
        model = Coches
        fields = "__all__"
        
        CNombre = forms.TextInput(attrs={'class': 'form-control'})
        Cfabricante = forms.TextInput(attrs={'class': 'form-control'})
        CPotencia = forms.TextInput(attrs={'class': 'form-control'})
        Ccentimetros = forms.TextInput(attrs={'class': 'form-control'})
        CColor = forms.TextInput(attrs={'class': 'form-control'})
        CMxPas = forms.TextInput(attrs={'class': 'form-control'})
        CPeso = forms.TextInput(attrs={'class': 'form-control'})
        CcodComercial = forms.TextInput(attrs={'class': 'form-control'})

