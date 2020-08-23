"use strict"
function affichEnt(id_ent){
    let id = obtenirParametre("id");
    let xhr =new XMLHttpRequest(); 
    xhr.open("get","http://localhost/entite?id="+id, true); 
    xhr.onload = function(){
        let tabl= JSON.parse(xhr.response).slice(); //transformation en tableau d'objets
        let li = "";
        for(let i in tabl){  //boucle sur le tableau d'objet
            li += "<li>"+tabl[i].nom+"-----------------"+tabl[i].description+"</li>";  
        }
        document.getElementById(id_ent).innerHTML += li;  
    };
    xhr.send();  
}