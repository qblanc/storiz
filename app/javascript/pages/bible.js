console.log('heeh')


const initDisplayCharShowOnClick = () => {
  const nameBox = document.querySelectorAll('.char-item');
  nameBox.forEach((name) => {
    name.style.cursor = "pointer";
    name.addEventListener('mouseover', () => {
      name.style.textDecoration = "underline";
    });
    name.addEventListener('mouseout', () => {
      name.style.textDecoration = "none";
    });
    name.addEventListener('click', () => {
      console.log(name.dataset.characId)
    });
  })
};

export { initDisplayCharShowOnClick };

// countries.forEach((item) => {
//   console.log(item.innerText);
// });
