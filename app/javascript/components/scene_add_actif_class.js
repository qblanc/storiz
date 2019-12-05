const addActifClassToSceneList = () => {
  const sceneId = document.querySelector('.scene-title').dataset.scenetitle;
  const sceneListItem = document.querySelector(`.list-group-item[data-scenelist=${sceneId}]`);

  sceneListItem.classList.add('actif');
};

export { addActifClassToSceneList };
