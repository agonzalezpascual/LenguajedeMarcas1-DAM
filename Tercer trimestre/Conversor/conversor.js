
function Convertir() {

    var cantidad = document.getElementById('display').value;
    var moneda = " ";

    if (document.getElementById("Euros").checked){
        cantidad /= 1.20;
        moneda += document.getElementById("Euros").value;
     }else{
        cantidad *= 1.20;
        moneda += document.getElementById("Dólares").value;
     }

    document.getElementById("display2").value = cantidad.toFixed(2) + moneda;


}
