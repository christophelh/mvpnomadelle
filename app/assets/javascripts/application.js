//= require rails-ujs
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap


// Change the color of the card

// const cards = document.querySelectorAll(".card-body")

// cards.forEach((card) => {
// card.addEventListener("click", (event) => {
//   console.log(card.classList.toggle("blur-card"));
//   });
// });

<script>
$(document).ready(function () {
    if(window.location.href.indexOf("france") > -1) {
       alert("your url contains the name franky");
    }
});
</script>
