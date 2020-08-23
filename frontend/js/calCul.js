"use strict"
function calCul(){
    let a = Date.now();
    if(a%2 == 0){
        a /= 12.75;
    }else{
        a *= 12.75;
    }
    document.getElementById('calc').innerText = a.toFixed(2);
}