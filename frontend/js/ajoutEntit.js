"use strict"
function ajout() { 
    let id = obtenirParametre("id");
    let form = document.getElementById('ajout');   
    let xhr = new XMLHttpRequest();
    xhr.open('get','http://localhost/ajoutEntit?nom='+form.nom.value+'&description='+form.description.value+'&id_collection='+id,true); //input dans la database
    xhr.send();
    form.nom.value=''; //remise à zéro du formulaire
    form.description.value='';
    return false
}