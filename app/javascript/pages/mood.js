window.onload = function () {
  // GET ALL THE PLAYERS - DRAGGABLE AND DROP ZONES
  var draggable = document.getElementById("draggable"),
      dropzones = document.getElementsByClassName("dropzone");

  // DRAG START - HIGHLIGHT DROP ZONES WITH CSS CLASS
  draggable.addEventListener("dragstart", function () {
    for (let i = 0; i < dropzones.length; i++) {
      dropzones[i].classList.add("active");
    }
  });

  // DRAG END - REMOVE ALL ADDED ACTIVE & OVER CSS CLASS
  draggable.addEventListener("dragend", function () {
    for (let i = 0; i < dropzones.length; i++) {
      dropzones[i].classList.remove("active");
      dropzones[i].classList.remove("over");
    }
  });

  // DRAG - AS YOU ARE DRAGGING
  draggable.addEventListener("drag", function () {
    // DO SOMETHING... IF YOU WANT
  });

  for (let i = 0; i < dropzones.length; i++) {
    // DRAG ENTER - HIGHLIGHT THIS ZONE
    dropzones[i].addEventListener("dragenter", function () {
      dropzones[i].classList.add("over");
    });

    // DRAG LEAVE - REMOVE HIGHLIGHT ON THIS ZONE
    dropzones[i].addEventListener("dragleave", function () {
      dropzones[i].classList.remove("over");
    });

    // DRAG OVER - PREVENT THE DEFAULT "DROP", SO WE CAN DO OUR OWN
    dropzones[i].addEventListener("dragover", function (evt) {
      evt.preventDefault();
    });

    // ON DROP - MOVE THE DRAGGABLE ELEMENT
    dropzones[i].addEventListener("drop", function (evt) {
      evt.preventDefault();
      // Will move the draggable element only if dropped into a different box
      if (evt.target != draggable.parentNode && evt.target != draggable) {
        draggable.parentNode.removeChild(draggable);
        evt.target.appendChild(draggable);
      }
    });
  }
};


  //--------------------------------------------------------------------

var object = document.getElementById('element'),
initX, initY, firstX, firstY;

object.addEventListener('mousedown', function(e) {

  e.preventDefault();
  initX = this.offsetLeft;
  initY = this.offsetTop;
  firstX = e.pageX;
  firstY = e.pageY;

  this.addEventListener('mousemove', dragIt, false);

  window.addEventListener('mouseup', function() {
    object.removeEventListener('mousemove', dragIt, false);
  }, false);

}, false);

object.addEventListener('touchstart', function(e) {

  e.preventDefault();
  initX = this.offsetLeft;
  initY = this.offsetTop;
  var touch = e.touches;
  firstX = touch[0].pageX;
  firstY = touch[0].pageY;

  this.addEventListener('touchmove', swipeIt, false);

  window.addEventListener('touchend', function(e) {
    e.preventDefault();
    object.removeEventListener('touchmove', swipeIt, false);
  }, false);

}, false);

function dragIt(e) {
  this.style.left = initX+e.pageX-firstX + 'px';
  this.style.top = initY+e.pageY-firstY + 'px';
}

function swipeIt(e) {
  var contact = e.touches;
  this.style.left = initX+contact[0].pageX-firstX + 'px';
  this.style.top = initY+contact[0].pageY-firstY + 'px';
}


// ----------------------------------------------------------------------

class Draggable {

   constructor() {
       this.container = document.querySelector('.box__dragabble');
       this.box = document.querySelectorAll('.box');

       this._addEventListener();
   }

   _addEventListener() {
       this.box.forEach(element => {
           element.addEventListener('dragenter', this.dragenter)
           element.addEventListener('dragleave', this.dragleave)
           element.addEventListener('dragover', this.dragover)
           element.addEventListener('drop', this.drop)
       });

       this.container.addEventListener('dragstart', this.dragstart);
       this.container.addEventListener('dragend', this.dragend);
   }

   dragstart(e) {
       this.classList.add('drag_start');
      setTimeout(() => {
         this.classList.add('invisible');
      }, 0);
   }

   dragend(e) {
       console.log('dragend')
       this.classList.remove('invisible');
       this.classList.remove('drag_start');
   }

   dragenter(e) {
       e.preventDefault();

       console.log('dragenter')
        this.classList.add('drag_enter');
   }

   dragleave(e) {
       console.log('dragleave')
       this.classList.remove('drag_enter');
   }

   dragover(e) {
       e.preventDefault();
       console.log('dragover')
   }

   drop() {
        let container = document.querySelector('.box__dragabble');
        this.classList.remove('drag_enter')
       this.append(container)
   }

   static init() {
       return new this();
   }
}


document
    .addEventListener('load', Draggable.init());
