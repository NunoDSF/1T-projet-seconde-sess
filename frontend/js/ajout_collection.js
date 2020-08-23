"use strict"
function ajout() { 
    let formu = document.getElementById('ajout');   //récup du formulaire
    let selectElmt = document.getElementById("categ");  //récup des catégories
    let valeurselectionnee = selectElmt.options[selectElmt.selectedIndex].id;  //valeur selectionné dans categories
    let xhr = new XMLHttpRequest();
    xhr.open('get','http://localhost/ajoutCollection?nom='+formu.nom.value+'&description='+formu.description.value+'&id_categorie='+valeurselectionnee,true); 
    xhr.send(); //envoie à la db 
    formu.nom.value=''; //mets des vides dans le formulaire
    formu.description.value='';
    return false
}