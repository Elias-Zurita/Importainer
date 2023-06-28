function funcionCheckboxHome() {
    
    var checkbox120Cuotas = document.getElementById("flexRadioDefault1");
    var checkbox240Cuotas = document.getElementById("flexRadioDefault2");

    if (checkbox120Cuotas.checked) {
        document.getElementById("120cuotas").style.display ="block";
        document.getElementById("240cuotas").style.display = "none";
    } else if (checkbox240Cuotas.checked) {
        document.getElementById("120cuotas").style.display ="none";
        document.getElementById("240cuotas").style.display = "block";
    }
}
