// import { resizedragdrop } from './mooditemv2';

// const  reload =() =>{
//   window.location.reload();
// }

function MoodModal() {
  const submitModal = document.querySelector('#submit-modal-image');
  submitModal.addEventListener('click',(event)=> {
    const closeModal = document.querySelector('#close-after-create');
    closeModal.click();
    // reload();
  });
  // submitModal.addEventListener("transitionend", function(event) {

  // }, false);

}

export { MoodModal }
