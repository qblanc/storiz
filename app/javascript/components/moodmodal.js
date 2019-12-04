const  reload =() =>{
  window.location.reload();
}
function MoodModal() {
  const submitModal = document.querySelector('#submit-modal-image');
  submitModal.addEventListener('click',(event)=> {
    const closeModal = document.querySelector('#close-after-create');
    closeModal.click();
  });

}

export { MoodModal }
