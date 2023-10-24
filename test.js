// let elem = document.querySelector(".ak")
// document.querySelector("h1").addEventListener("click",()=>{
//     elem.innerHTML = '<h1 class="bf">Я СКАЗАЛ ПОШËЛ НАХУЙ</h1>'
// })

var slideIndex = 0;
var slides = document.getElementsByTagName("img");
var prevBtn = document.getElementById("prevBtn");
var nextBtn = document.getElementById("nextBtn");

showSlide(slideIndex);

prevBtn.addEventListener("click", function () {
  slideIndex--;
  if (slideIndex < 0) {
    slideIndex = slides.length - 1;
  }
  showSlide(slideIndex);
});

nextBtn.addEventListener("click", function () {
  slideIndex++;
  if (slideIndex >= slides.length) {
    slideIndex = 0;
  }
  showSlide(slideIndex);
});

function showSlide(index) {
  for (var i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slides[index].style.display = "block";
}
