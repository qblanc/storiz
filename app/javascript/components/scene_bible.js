const showDetailsOnClickSceneBible = () => {

  document.querySelector(".search-bar .search-btn").addEventListener('click', (event) => {

    setTimeout(function(){

      var searchSceneResults = document.querySelectorAll('.search-scene-results');

      searchSceneResults.forEach((result) => {

        result.addEventListener('click', (event) => {

          // Show Char Details
          var searchSceneResultsGroup = document.querySelector('.result-list-group');
          var searchSceneResultsHeight = searchSceneResultsGroup.offsetHeight;

          const charIdScene = event.currentTarget.dataset.searchlist;
          const charDetailsScene = document.querySelector(`.search-scene-details[data-searchdetails="${charIdScene}"]`);

          charDetailsScene.style.display = 'block';

          setTimeout(function(){
            charDetailsScene.classList.add("slideY");
            charDetailsScene.style.top = `-${searchSceneResultsHeight}px`;
            document.querySelector('.result-list-group').classList.add('hide-results-bible-scene')
          }, 150);

          // Hide Char Details
          const buttons = document.querySelectorAll(".hide-details-scene-bible");

          buttons.forEach((button) => {
            var charHideId = button.dataset.hidebtn;
            const sceneToHide = document.querySelector(`.search-scene-details[data-searchdetails="${charHideId}"]`);

            button.addEventListener('click', (event) => {
              document.querySelector('.result-list-group').classList.remove('hide-results-bible-scene')
              sceneToHide.classList.remove("slideY");
              setTimeout(function(){
                sceneToHide.style.display = 'none';
              }, 700);
            });
          })
        });
      });
    }, 150);
  })
};

const displayModalSceneBible = () => {
  const addEventButtons = document.querySelectorAll('.btn-addevent-scene');

    const charModalId = addEventButton.data.target
    console.log(charModalId)
};


export { showDetailsOnClickSceneBible };
