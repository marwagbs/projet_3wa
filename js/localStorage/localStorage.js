//on récupère notre button
let btn= document.querySelectorAll(".add");

//déclaration d'une variable dont laquelle on met le key et les value qui sont dans le localstorage
// //Convertir les données au format Json qui sont dans le localstorage
// let listTab= JSON.parse(localStorage.getItem("cartList"));
// // console.log(list);
// //boucle pour parcourrir tous les boutton
// for (let i= 0; i < btn.length; i++) {
    
 
//     btn[i].addEventListener("click", addToCart);
// }
 
// function addToCart(event) {
//     console.log(event)
//      //on récupère notre data-attribute
//     const productID = event.target.getAttribute("data-id")
//     const productName = event.target.getAttribute("data-name");
//     const productPrice = event.target.getAttribute("data-price");
//     //console.log(productID)
    
//     //alert("Click");
    
//     //s'il y a déja des produits enregistrées dans le local storage on ajoute notre produit
//     if (listTab){
//         listTab.push(productID, productName,productPrice);
//         let listString = JSON.stringify(listTab);
//         //console.log(listString);
//         localStorage.setItem("cartList",listString);
    
//     //s'il n'ya pas des produits on crée notre tableau et on ajoute notre 1er produit
//     }else{
//         listTab=[];
//         listTab.push(productID);
//         let listString = JSON.stringify(listTab);
//         //console.log(listString);
//         localStorage.setItem("cartList",listString);
        
      
//     }
    
//     //Affichage dans le panier
//     //savoir le nombre d'element présent dans le local storage
//     let count=listTab.length;
//     //afficher dans la panier
//     document.getElementById("number").innerHTML = count;
// }
   
// let count=listTab.length;
// //afficher dans la panier
// document.getElementById("number").innerHTML = count;
///////////////////////////////////////////////////////////////////////////////////////
/*                              Localstorage                                        */
///////////////////////////////////////////////////////////////////////////////////////
//Ce fichier ne va contenir que des fonction liées au LS 

//on récupère le contenu de LS
// Récupération du contenu

function getDatas(key) {
    return JSON.parse(localStorage.getItem(key)) ?? [];
}

// Enregistrement dans le localstorage de la clé et de ses valeurs

function setDatas(key, datas) {
    const dataConvert = JSON.stringify(datas)
    localStorage.setItem(key, dataConvert)
}

// Vérification de l'id s'il éxiste dans le localstorage
//key identifie le panier dans le LS
function isItemInStorage(idProd, key) {
    //récupérer mon local storage
    const datas = getDatas(key);
    //parcourir le LS
    let found = false;
    let index=0;
    for(let i = 0; i < datas.length; i++){
        if(idProd === datas[i].id){
            //return true
            found = true;
            break;
        }
        // else{
        //     return false
        // }
    }
    return found;
}
// Construction de notre produit qui sera ajouté dans le localstorage

function addProduct(id, name, price, picture) {
    return {id: id, name: name, price: price, picture: picture, qtt: 1}
}

// Dans LocalStorage : suppression de tout les articles
function clearData(key) {
    return localStorage.removeItem(key);
}
// Export de nos fonctions.
export {getDatas, setDatas, isItemInStorage, addProduct, clearData}



