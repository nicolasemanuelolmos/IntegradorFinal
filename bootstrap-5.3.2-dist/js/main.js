function valorEntrada() {

    var capCantiad = document.getElementById('cantidad').value;
    var capCategoria = document.getElementById('categoria').value;
    const TICKET = 200;
    var resumenTotal = 0;

    if(capCategoria == 0){
         resumenTotal = capCantiad*TICKET;
    }else if(capCategoria == 1){
        resumenTotal = capCantiad*TICKET*0.20;
    }else if(capCategoria == 2){
        resumenTotal = capCantiad*TICKET*0.50;
    }else{
        resumenTotal =capCantiad*TICKET*0.85;
    }

    document.getElementById('total').innerText = resumenTotal;
}

const BTNCLICK = document.getElementById('btnResumen');
BTNCLICK.addEventListener('click',valorEntrada);


function controlForm() {

    if(nombre.value === ""){
        nombre.classList.add("is-invalid");
        nombre.focus();
    }else{
        nombre.classList.remove('is-invalid');
    }

    const nom = nombre.value;
    const regex2 = /^[A-Za-z\s]+$/;

    if(regex2.test(nom)){
        nombre.classList.remove('is-invalid');
    }else{
        nombre.classList.add('is-invalid');
        nombre.focus();
    }

    if(apellido.value === ""){
        apellido.classList.add("is-invalid");
        apellido.focus();
    }else{
        apellido.classList.remove('is-invalid');
    }

    const ape = apellido.value;
    const regex1 = /^[A-Za-z\s]+$/;

    if(regex1.test(ape)){
        apellido.classList.remove('is-invalid');
    }else{
        apellido.classList.add('is-invalid');
        apellido.focus();
    }

    if(mail.value === ""){
        mail.classList.add("is-invalid");
        mail.focus();
    }else{
        mail.classList.remove('is-invalid');
    }

    const correo = mail.value;
    const regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

    if(regex.test(correo)){
        mail.classList.remove('is-invalid');
    }else{
        mail.classList.add('is-invalid');
        mail.focus();
    }

}

BTNCLICK.addEventListener('click',controlForm);

function borrarForm() {
    document.getElementById('total').value = "0";
}

const BTNCLICK1 = document.getElementById('btnBorrar');
BTNCLICK1.addEventListener('click', borrarForm);