function set_drag_drop(dragObj){
  dragObj.adx = 0;
  // distance en pixel entre le top de la window et
  // la div qui contient ton element
  dragObj.ady = 172;

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
    // TODO AJAX persist top et left attribute
    console.log(dragObj.style.left.replace('px',''))
    console.log(dragObj.style.top.replace('px',''))
    dragObj.isDown = false;
  })

  document.addEventListener('mousemove', function(e){
    if(dragObj && dragObj.isDown){
      dragObj.style.left = e.pageX - dragObj.adx + dragObj.dx + "px";
      dragObj.style.top = e.pageY - dragObj.ady + dragObj.dy + "px";
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
}

export { initMoodBoard };
