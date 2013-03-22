
var debug_el = $("#debug");
    function debug(text) {
        debug_el.text(text);
    }


    /**
     * requestAnimationFrame and cancel polyfill
     */
    (function() {
        var lastTime = 0;
        var vendors = ['ms', 'moz', 'webkit', 'o'];
        for(var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
            window.requestAnimationFrame = window[vendors[x]+'RequestAnimationFrame'];
            window.cancelAnimationFrame =
                    window[vendors[x]+'CancelAnimationFrame'] || window[vendors[x]+'CancelRequestAnimationFrame'];
        }

        if (!window.requestAnimationFrame)
            window.requestAnimationFrame = function(callback, element) {
                var currTime = new Date().getTime();
                var timeToCall = Math.max(0, 16 - (currTime - lastTime));
                var id = window.setTimeout(function() { callback(currTime + timeToCall); },
                        timeToCall);
                lastTime = currTime + timeToCall;
                return id;
            };

        if (!window.cancelAnimationFrame)
            window.cancelAnimationFrame = function(id) {
                clearTimeout(id);
            };
    }()); 


    /**
    * super simple carousel
    * animation between panes happens with css transitions
    */


    function Carousel(element)
    {
        var self = this;
        element = $(element);

        var container = $(">ul", element);
        var panes = $(">ul>li", element);

        var pane_width = 0;
        var pane_count = panes.length;

        var current_pane = 0;


        /**
         * initial
         */
        this.init = function() {
            setPaneDimensions();

            $(window).on("load resize orientationchange", function() {
                setPaneDimensions();
                //updateOffset();
            })
        };


        /**
         * set the pane dimensions and scale the container
         */
        function setPaneDimensions() {
            pane_width = element.width();
            panes.each(function() {
                $(this).width(pane_width);
            });
            container.width(pane_width*pane_count);
        };


        /**
         * show pane by index
         * @param   {Number}    index
         */
        this.showPane = function( index ) {
            // between the bounds
            index = Math.max(0, Math.min(index, pane_count-1));
            current_pane = index;

            var offset = -((100/pane_count)*current_pane);
            setContainerOffset(offset, true);
        };


        function setContainerOffset(percent, animate) {
            container.removeClass("animate");

            if(animate) {
                container.addClass("animate");
            }

            if(Modernizr.csstransforms3d) {
                container.css("transform", "translate3d("+ percent +"%,0,0) scale3d(1,1,1)");
            }
            else if(Modernizr.csstransforms) {
                container.css("transform", "translate("+ percent +"%,0)");
            }
            else {
                var px = ((pane_width*pane_count) / 100) * percent;
                container.css("left", px+"px");
            }
        }

        this.next = function() { return this.showPane(current_pane+1, true); };
        this.prev = function() { return this.showPane(current_pane-1, true); };


        this.page_prev = function() { return this.showPane(current_pane-1, true); };
        this.page_next = function() { return this.showPane(current_pane+1, true); };


        this.page_1 = function() { return this.showPane(0, true); };
        this.page_2 = function() { return this.showPane(1, true); };

        this.page_3 = function() { return this.showPane(2, true); };
        this.page_4 = function() { return this.showPane(3, true); };


$('<a id="pane-'+ $(this).index() +'" class="pane-item">Anterior</a>').appendTo(element);
$('<a id="pane-'+ $(this).index() +'" class="pane-item">Siguiente</a>').appendTo(element);
panes.each(function() {
      button = $(this).index();
      button = button+1;
       $('<a id="pane-'+ button +'" class="pane-item">' + button + '</a>').appendTo(element);
     });


   function navigation(ev) {
     console.log(ev);

     

      $('.pane-item').click(function() {
        clicked = $(this).index();
        console.log(current_pane);

        switch(clicked) {
          case 1:
            self.page_prev();
            ev.gesture.stopDetect();
            break;

          case 2:
            self.page_next()
            ev.gesture.stopDetect();
            break;

          case 3:
            self.page_1();
            ev.gesture.stopDetect();

            break;

          case 4:
            self.page_2()
            ev.gesture.stopDetect();
            break;

          case 5:
            self.page_3();
            ev.gesture.stopDetect();

            break;

          case 6:
            self.page_4()
            ev.gesture.stopDetect();
            break;
          default: 
        }
      });    

   }


        function handleHammer(ev) {
navigation(ev);
            console.log(ev);
            // disable browser scrolling
            ev.gesture.preventDefault();

            switch(ev.type) {
                case 'dragright':
                case 'dragleft':
                    // stick to the finger
                    var pane_offset = -(100/pane_count)*current_pane;
                    var drag_offset = ((100/pane_width)*ev.gesture.deltaX) / pane_count;

                    // slow down at the first and last pane
                    if((current_pane == 0 && ev.gesture.direction == Hammer.DIRECTION_RIGHT) ||
                        (current_pane == pane_count-1 && ev.gesture.direction == Hammer.DIRECTION_LEFT)) {
                        drag_offset *= .4;
                    }

                    setContainerOffset(drag_offset + pane_offset);
                    break;

                case 'swipeleft':
                    self.next();
                    ev.gesture.stopDetect();
                    break;

                case 'swiperight':
                    self.prev();
                    ev.gesture.stopDetect();
                    break;

                case 'release':
                    // more then 50% moved, navigate
                    if(Math.abs(ev.gesture.deltaX) > pane_width/2) {
                        if(ev.gesture.direction == 'right') {
                            self.prev();
                        } else {
                            self.next();
                        }
                    }
                    else {
                        self.showPane(current_pane, true);
                    }
                    break;
            }
        }

        element.hammer({ drag_lock_to_axis: true })
            .on("release dragleft dragright swipeleft swiperight", handleHammer);
    }


    var carousel = new Carousel("#carousel");
    carousel.init();


