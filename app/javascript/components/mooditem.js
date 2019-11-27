function set_drag_drop(dragObj){
  dragObj.adx = 0;
  // distance en pixel entre le top de la window et
  // la div qui contient ton element
  dragObj.ady = 0;

  const form = document.querySelector(dragObj.dataset.form)
  const topInput = form.querySelector('#mooditem_top')
  const leftInput = form.querySelector('#mooditem_left')

  dragObj.addEventListener('mousedown', function(e){
    var rect = dragObj.getBoundingClientRect();
    // obj.dx distance entre border gauche du rect
    // dans lequel est inclus l'element
    // et la position du pointeur
    dragObj.dx = rect.left - e.clientX;
    dragObj.dy = rect.top - e.clientY;
    dragObj.isDown = true;
  })

  document.addEventListener('mouseup', function(e){
    console.log(dragObj.style.left.replace('px',''))
    console.log(dragObj.style.top.replace('px',''))
    dragObj.isDown = false;
    form.submit()
  })

  document.addEventListener('mousemove', function(e){
    if(dragObj && dragObj.isDown){
      let deltaX = e.pageX - dragObj.adx + dragObj.dx
      let deltaY = e.pageY - dragObj.ady + dragObj.dy
      leftInput.value = deltaX
      topInput.value = deltaY
      dragObj.style.left =  `${deltaX}px`;
      dragObj.style.top = `${deltaY}px`;
    }
  })
}

function positionItem(draggable){
  draggable.style.left = `${draggable.dataset.x}px`
  draggable.style.top = `${draggable.dataset.y}px`
}

function initMoodBoard(){
  document.querySelectorAll('.draggable').forEach((draggable) => {
    positionItem(draggable)
    set_drag_drop(draggable);
  })

function throttled(delay, fn) {
  let lastCall = 0;
  return function (...args) {
    const now = (new Date).getTime();
    if (now - lastCall < delay) {
      return;
    }
    lastCall = now;
    return fn(...args);
  }
}
}

export { initMoodBoard };
