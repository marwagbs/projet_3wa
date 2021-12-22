//import * as local from './js/localStorage/localStorage.js'

//Déclaration de variables 
const data = localStorage.getItem("cartList");
let orderBtn = document.getElementById("order");
// //ajax sous format vanilla 
function order() {
    fetch('order.php?cart='+data)

        //récupérer et retourne une promesse contenant, en réponse, un objet (de type Response).
        .then(response => response.json())
        .then(response => console.log(response))
        .catch(error => console.log("Erreur : " + error));
}
orderBtn.addEventListener("click", order);

