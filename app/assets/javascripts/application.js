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

// id=result is added if the query not empty


// document.addEventListener("enter", (event) => {
  document.querySelector('.summary').scrollIntoView({
    behavior: 'smooth'
  });
// });


// faq

$(function() {
    // Since there's no list-group/tab integration in Bootstrap
    $('.list-group-item').on('click',function(e){
        var previous = $(this).closest(".list-group").children(".active");
        previous.removeClass('active'); // previous list-item
        $(e.target).addClass('active'); // activated list-item
    });
});
