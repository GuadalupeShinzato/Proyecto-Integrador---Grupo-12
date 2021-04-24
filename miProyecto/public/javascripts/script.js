window.onload = function(){
    let seguir = document.getElementById ("seguir");
    let siguiendo = document.getElementById ("siguiendo");
    
    seguir.addEventListener('click', function(){
        seguir.style.display = "none"
        siguiendo.style.display = "block"
    });
};
