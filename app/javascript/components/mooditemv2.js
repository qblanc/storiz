function resizedragdrop(){

  function resizeableImage(image_target) {

    function startResize(e){
        e.preventDefault();
        e.stopPropagation();
        saveEventState(e);
        $(document).on('mousemove', resizing);
        $(document).on('mouseup', endResize);
    };

    function endResize(e){
        e.preventDefault();
        $(document).off('mouseup touchend', endResize);
        $(document).off('mousemove touchmove', resizing);
    };

    function saveEventState(e){
      // Save the initial event details and container state
      event_state.container_width = $container.width();
      event_state.container_height = $container.height();
      event_state.container_left = $container.offset().left;
      event_state.container_top = $container.offset().top;
      event_state.mouse_x = (e.clientX || e.pageX || e.originalEvent.touches[0].clientX) + $(window).scrollLeft();
      event_state.mouse_y = (e.clientY || e.pageY || e.originalEvent.touches[0].clientY) + $(window).scrollTop();

      // This is a fix for mobile safari
      // For some reason it does not allow a direct copy of the touches property
      if(typeof e.originalEvent.touches !== 'undefined'){
      event_state.touches = [];
      $.each(e.originalEvent.touches, function(i, ob){
        event_state.touches[i] = {};
        event_state.touches[i].clientX = 0+ob.clientX;
        event_state.touches[i].clientY = 0+ob.clientY;
      });
      }
      event_state.evnt = e;
    }

    function resizing(e){
      var mouse={},width,height,left,top,offset=$container.offset();
        mouse.x = (e.clientX || e.pageX || e.originalEvent.touches[0].clientX) + $(window).scrollLeft();
        mouse.y = (e.clientY || e.pageY || e.originalEvent.touches[0].clientY) + $(window).scrollTop();

        // Position image differently depending on the corner dragged and constraints
        if( $(event_state.evnt.target).hasClass('resize-handle-se') ){
          width = mouse.x - event_state.container_left;
          height = mouse.y  - event_state.container_top;
          left = event_state.container_left;
          top = event_state.container_top;
        } else if($(event_state.evnt.target).hasClass('resize-handle-sw') ){
          width = event_state.container_width - (mouse.x - event_state.container_left);
          height = mouse.y  - event_state.container_top;
          left = mouse.x;
          top = event_state.container_top;
        } else if($(event_state.evnt.target).hasClass('resize-handle-nw') ){
          width = event_state.container_width - (mouse.x - event_state.container_left);
          height = event_state.container_height - (mouse.y - event_state.container_top);
          left = mouse.x;
          top = mouse.y;
          if(constrain || e.shiftKey){
            top = mouse.y - ((width / orig_src.width * orig_src.height) - height);
          }
        } else if($(event_state.evnt.target).hasClass('resize-handle-ne') ){
          width = mouse.x - event_state.container_left;
          height = event_state.container_height - (mouse.y - event_state.container_top);
          left = event_state.container_left;
          top = mouse.y;
          if(constrain || e.shiftKey){
            top = mouse.y - ((width / orig_src.width * orig_src.height) - height);
          }
        }

        // Optionally maintain aspect ratio
        if(constrain || e.shiftKey){
          height = width / orig_src.width * orig_src.height;
        }

        if(width > min_width && height > min_height && width < max_width && height < max_height){
          // To improve performance you might limit how often resizeImage() is called
          resizeImage(width, height);
          // Without this Firefox will not re-calculate the the image dimensions until drag end
          $container.offset({'left': left, 'top': top});
        }

        let deltaWidth = width;
        console.log(deltaWidth);
        let deltaHeight = height;
        console.log(deltaHeight);
        widthInput.value = deltaWidth;
        heightInput.value = deltaHeight;
    }

    function resizeImage(width, height){
        $(image_target).css('width', width);
        $(image_target).css('height', height);
        form.submit();
        // resize_canvas.width = width;
        // resize_canvas.height = height;
        // resize_canvas.getContext('2d').drawImage(orig_src, 0, 0, width, height);
        // $(image_target).attr('src', resize_canvas.toDataURL("image/png"));
    };

    function startMoving(e){
        e.preventDefault();
        e.stopPropagation();
        saveEventState(e);
        $(document).on('mousemove', moving);
        $(document).on('mouseup', endMoving);
    };

    function endMoving(e){
        $(document).off('mouseup', endMoving);
        $(document).off('mousemove', moving);
        form.submit();
    };

    function moving(e){
        var  mouse={};
        e.preventDefault();
        e.stopPropagation();
        mouse.x = (e.clientX || e.pageX) + $(window).scrollLeft();
        mouse.y = (e.clientY || e.pageY) + $(window).scrollTop();
        $container.offset({
            'left': mouse.x - ( event_state.mouse_x - event_state.container_left ),
            'top': mouse.y - ( event_state.mouse_y - event_state.container_top )
        });
        var deltaX = mouse.x - ( event_state.mouse_x - event_state.container_left );
        console.log('deltaX');
        console.log(deltaX);
        var deltaY = mouse.y - ( event_state.mouse_y - event_state.container_top );
        console.log('deltaY');
        console.log(deltaY);
        var leftInput = deltaX;
        var topInput = deltaY;
        leftInput.value = deltaX;
        // topInput.value = deltaY;
    };

    var $container,
    orig_src = new Image(),
    image_target = $(image_target).get(0),
    event_state = {},
    constrain = false,
    min_width = 60,
    min_height = 60,
    max_width = 800,
    max_height = 900,
    resize_canvas = document.createElement('canvas');

    function init(){
        // image_target.setAttribute('allowTaint', 'true')
        // image_target.setAttribute('crossOrigin', 'Anonymous')
        // Create a new image with a copy of the original src
        // When resizing, we will always use this original copy as the base
        orig_src.src = image_target.src;
        const form = document.querySelector(image_target.dataset.form)
        const topInput = form.querySelector('#mooditem_top')
        const leftInput = form.querySelector('#mooditem_left')
        const heightInput = form.querySelector('#mooditem_height')
        const widthInput = form.querySelector('#mooditem_width')
        const depthInput = form.querySelector('#mooditem_depth')
        console.log(form)
        // Add resize handles
        $(image_target).wrap('<div class="resize-container"></div>')
        .before('<span class="resize-handle resize-handle-nw"></span>')
        .before('<span class="resize-handle resize-handle-ne"></span>')
        .after('<span class="resize-handle resize-handle-se"></span>')
        .after('<span class="resize-handle resize-handle-sw"></span>');

        // Get a variable for the container
        $container =  $(image_target).parent('.resize-container');

        // Add events
        $container.on('mousedown', '.resize-handle', startResize);
    };

    init();

    $container.on('mousedown', 'img', startMoving);
  };
  $('.resize-image').each(function() {
    resizeableImage($( this ));
  });
};

export { resizedragdrop }
