"use strict"
function affichColle(id) { 
    let xhr =new XMLHttpRequest(); //nouvelle requête
    xhr.open("get","http://localhost/collec", true);  //demande la liste des collections
    xhr.onload = function(){
        let tabl= JSON.parse(xhr.response).slice(); 
        let colle = "";
        for(let i in tabl){  //boucle sur le tableau d'objet
            colle += "<tr><td>"+tabl[i].nom+"</td><td>"+tabl[i].description+"</td><td>"+tabl[i].nomCateg+"</td><td><button onclick='voirPlus("+tabl[i].id_colle+")'>VOIR PLUS</button></td></tr>";  //tableau avec informations des collections
        }
        document.getElementById(id).innerHTML += colle  //ajout dans le html des options
    };
    xhr.send();  

}