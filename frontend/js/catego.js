"use strict"
function Categ(id) {  
    let xhr =new XMLHttpRequest(); 
    xhr.open("get","http://localhost/categorie", true);  //va chercher lq liste de toutes les catégories
    xhr.onload = function(){
        let tabl= JSON.parse(xhr.response).slice();  
        let categori = "";
        for(let i in tabl){  
            categori += "<option value='"+tabl[i].categorie+"' id='"+tabl[i].id_categorie+"'>"+tabl[i].categorie+"</option>";  //options déroulantes
        }
        document.getElementById(id).innerHTML += categori  
    };
    xhr.send();  
}