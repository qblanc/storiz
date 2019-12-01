const TextSave = () => {
  const formBtn = document.querySelector(".edit_scene input[type='submit']");
  if (formBtn) {
    setInterval (() => {
      const textSaveForm = document.querySelector(".update-btn");
      textSaveForm.click();
    }, 10000)
  }
}

// const TextSave = () => {
//   const editor = document.querySelector('.editor');
//   const trixEditor = document.querySelector('trix-editor');
//   if (editor && trixEditor) {
//     const sceneId = editor.dataset.sceneId;
//     setInterval( () => {
//       fetch(`/scenes/${sceneId}`, {
//         method: "PATCH",
//         body: JSON.stringify({ content: trixEditor.innerHTML })
//     })
//     }, 10000);
//   }
// };

export { TextSave };
