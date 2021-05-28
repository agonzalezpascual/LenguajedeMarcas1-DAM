function valor(x) {
    
    document.getElementById("display").value += x;

}

function borrardisplay() {

    var y = "";

    document.getElementById("display").value = y;
    
}

function calcres() {

    var resul = eval(document.getElementById("display").value);
    document.getElementById("display").value = resul;
}