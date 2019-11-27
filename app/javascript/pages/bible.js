// console.log('heeh')


const initDisplayCharShowOnClick = () => {

  window.addEventListener("load", function(event) {

    console.log("Toutes les ressources sont chargées !");


    var linkChar = $(".list-group-item");
    console.log(linkChar);

    linkChar.each(function() {
      $(this).click(function() {
        $(".link-active").removeClass("link-active");
        $(this).addClass("link-active");

        var charBox = $('#char-show');
        // charBox.css({'transform': "translate(100%)", "animation-name":"card-bounce" });
        charBox.css('transform', "translate(0%)");
      });
    });





    // const nameBox = document.querySelectorAll('.list-group-item');

    // nameBox.forEach((name) => {

    //   // document.querySelector(".link-active").classList.remove();

    //   if (!name.classList.contains(".link-active")) {
    //     console.log("ne contient pas la classe");

    //     name.addEventListener('click', () => {
    //       name.classList.add("link-active");
    //     });

    //   } else {
    //     console.log(" contient la classe");
    //     name.addEventListener('click', () => {
    //       document.querySelector(".link-active").classList.remove("link-active");
    //       name.classList.add("link-active");
    //     });

    //   };

    //     //   console.log("nul");
    //     // name.addEventListener('click', () => {

    //     //   name.classList.add("link-active");
    //     // });


    //   });


    // nameBox.forEach((name) => {

    //   name.addEventListener('click', () => {

    //     nameBox.forEach((name) => {
    //     if (document.querySelector('.list-group-item').classList.contains(".link-active")) {
    //       console.log("TG");
    //       document.querySelector('.link-active').classList.remove("link-active");
    //       name.classList.add("link-active");
    //     } else {
    //       name.classList.add("link-active");
    //     }

    //   });


    // });


  });

};

          // console.log("nul");

export { initDisplayCharShowOnClick };


// countries.forEach((item) => {
//   console.log(item.innerText);
// });


  // transform: translate(100%);
