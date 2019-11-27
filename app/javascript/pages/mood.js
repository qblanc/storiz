$(document).ready(function() {
  var draggable = $('.draggable');
  var resizable = $('.resizeable');
  var element = $('.element');

  resizable.resizable({
        containment: "#background",
        aspectRatio: true,
        handles: "n, w, s, e"
  });

  draggable.draggable({
      cursor: "move",
      containment: "#background",
      stack: ".element",
  });

  const randomIntFromInterval = (min,max) => {
    return Math.floor(Math.random()*(max-min+1)+min);
  }

});

export { randomIntFromInterval };
