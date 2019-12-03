const initBoxSlide = () => {
  var previousBtn = document.querySelector("#previous");
  var nextBtn = document.querySelector("#next");
  var moveCard = document.querySelector(".home-projects .project-card:first-child");
  var widthMargin = 0;
  var widthCard = document.querySelector(".home-projects .project-card:first-child").offsetWidth;
  widthCard += 15; //pour l'espacement entre les cartes

  nextBtn.addEventListener("click", (event) => {
    console.log("next");
    widthMargin -= widthCard;
    moveCard.style.marginLeft = `${widthMargin}px`;
  })
  previousBtn.addEventListener("click", (event) => {
    console.log("previous");
    widthMargin += widthCard;
    moveCard.style.marginLeft = `${widthMargin}px`;
  })

}

export { initBoxSlide }
