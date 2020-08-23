"use strict"
function obtenirParametre (sVar) {
    return unescape(window.location.search.replace(new RegExp("^(?:.*[&\\?]" + escape(sVar).replace(/[\.\+\*]/g, "\\$&") + "(?:\\=([^&]*))?)?.*$", "i"), "$1"));
}

// je comprends pas trop cette fonction, je l'ai trouvé toute faite sur internet = https://developer.mozilla.org/fr/docs/Web/API/window/location