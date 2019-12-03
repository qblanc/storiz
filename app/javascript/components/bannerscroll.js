const initScroll = () => {
  $(document).ready(function () {
    $('.club-btn').on('click', function () { // Au clic sur un élément
      const page = $(this).attr('href'); // Page cible
      const speed = 1400; // Durée de l'animation (en ms)
      $('html, body').animate({ scrollTop: $(page).offset().top }, speed); // Go
      return false;
    });
  });
};

export { initScroll };
