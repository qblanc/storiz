const showDetailsOnClickSceneBible = () => {

  document.querySelector(".search-bar .search-btn").addEventListener('click', (event) => {

    setTimeout(function(){

      if (document.querySelectorAll('.search-scene-results').length > 0) {

        var searchSceneResults = document.querySelectorAll('.search-scene-results');

        searchSceneResults.forEach((result) => {

          result.addEventListener('click', (event) => {

            var searchSceneResultsGroup = document.querySelector('.result-list-group');
            var searchSceneResultsHeight = searchSceneResultsGroup.offsetHeight;

            console.log(searchSceneResultsHeight);

            const charIdScene = event.currentTarget.dataset.searchlist;
            const charDetailsScene = document.querySelector(`.search-scene-details[data-searchdetails="${charIdScene}"]`);

            charDetailsScene.style.display = 'block';

            setTimeout(function(){
              charDetailsScene.classList.add("slideY");
              charDetailsScene.style.top = `-${searchSceneResultsHeight}px`;
            }, 100);

          });
        });
      }

    }, 100);

  })

};


export { showDetailsOnClickSceneBible };
