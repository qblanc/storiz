console.log('heeh')


const initDisplayCharShowOnClick = () => {
  const nameBox = document.querySelectorAll('.char-item');

  nameBox.forEach((name) => {
    name.style.cursor = "pointer";
    name.addEventListener('click', () => { // Ne fonctionne pas :(
      name.addClass = "name-active";       // Ne fonctionne pas :(
    });                                    // Ne fonctionne pas :(
    name.addEventListener('mouseover', () => {
      name.style.backgroundColor = "#F5F5F5";
    });
    name.addEventListener('mouseout', () => {
      name.style.backgroundColor = "";
    });
  })

};

export { initDisplayCharShowOnClick };

// countries.forEach((item) => {
//   console.log(item.innerText);
// });
