//MODAL UTILISATION DE L'AJAX


let modal = null

const openModal = async function(e) {
    e.preventDefault()
    const target = e.target.getAttribute('href')
    if (target.startsWith('#')) {
        modal = document.querySelector(target)
    }
    else {
        modal = await loadModal(target)
    }
    modal.style.display = null
    modal.removeAttribute('aria-hidden')
    modal.setAttribute('aria-modal', 'true')
    modal.addEventListener('click', closeModal)
    modal.querySelector('.js-modal-close').addEventListener('click', closeModal)
    modal.querySelector('.js-modal-stop').addEventListener('click', stopPropagation)
}

const closeModal = function(e) {
    if (modal === null) return
    e.preventDefault()
    modal.setAttribute('aria-hidden', 'true')
    modal.removeAttribute('aria-modal')
    modal.removeEventListener('click', closeModal)
    modal.querySelector('.js-modal-close').removeEventListener('click', closeModal)
    modal.querySelector('.js-modal-stop').removeEventListener('click', stopPropagation)
    const hideModal = function () {
        modal.style.display = "none"
        modal.removeEventListener('animationend', hideModal)
        modal = null
    }
    modal.addEventListener('animationend', hideModal)

}

//FETCH
const loadModal = async function(url) {
    const target = '#' + url.split('#')[1]
    // Verification si un element similaire existe.
    const existModal = document.querySelector(target)
    if (existModal !== null) return existModal
    // console.log(existModal, "coucou")
    const html = await fetch(url).then(response => response.text())
    // On utilise DocumentFragment qui permet de selectionner des fragments HTML.
    const element = document.createRange().createContextualFragment(html).querySelector(target)
    // En cas d'érreur
    if (element === null) throw `Element ${target} is not found ${url}`
    
    // Si tout est ok.
    document.body.append(element)
    
    console.log(element, 'test')
    return element
    
}

// Fonction pour le click fermeture. Ce qui empechera le problème de click qui ferme la fenetre.
const stopPropagation = function(e) {
    e.stopPropagation()
}


// Evenement d'ouverture du modal
document.querySelectorAll('.js-modal').forEach(a => {
    a.addEventListener('click', openModal)
})

// Evenement fermeture du modal + fermer avec le touche échap du clavier.
window.addEventListener('keydown', function(e) {
    if (e.key === "Escape" || e.key === "Esc") {
        closeModal(e)
    }
})
