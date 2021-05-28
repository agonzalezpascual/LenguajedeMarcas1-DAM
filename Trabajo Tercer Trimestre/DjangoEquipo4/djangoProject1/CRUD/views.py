from django.http import HttpResponse
from django.shortcuts import render, redirect
from djangoProject1.forms import CochesForm
from CRUD.models import Coches
from django.contrib import messages

def insert(request):
    if request.method == "POST":
        form = CochesForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/concesionario/')
            except:
                pass
    form = CochesForm()
    return render(request, 'index.html', {'form': form})


def show(request):
    if 'q' in request.GET:
        q=request.GET['q']
        coches=Coches.objects.filter(CNombre__icontains=q)
    else:
        coches = Coches.objects.all()
    return render(request, 'show.html', {'coches': coches})


def delete(request, Uid):
    coche = Coches.objects.get(Uid=Uid)
    coche.delete()
    return redirect('/concesionario/')


def editar (request, Uid):
    Coche=Coches.objects.get(Uid=Uid)
    return render (request, "edit.html", {"Coches":Coche})




def update2(request, Uid):
        cochesillo = Coches.objects.get(Uid=Uid)
        
        cochesillo = Coches()
        cochesillo.Uid = Uid
        cochesillo.Cfabricante = request.POST.get('Cfabricante')
        cochesillo.CPotencia = request.POST.get('CPotencia')
        cochesillo.Ccentimetros = request.POST.get('Ccentimetros')
        cochesillo.CColor = request.POST.get('CColor')
        cochesillo.CMxPas = request.POST.get('CMxPas')
        cochesillo.Cpeso = request.POST.get('Cpeso')
        cochesillo.CNombre = request.POST.get('CNombre')
        cochesillo.CcodComercial_id = request.POST.get('CcodComercial_id')

        cochesillo.save()
        
        context = {'Coches': cochesillo}
        return redirect('/concesionario/')
