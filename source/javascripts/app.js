// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();

// workaround: there needs to be a click event to make the toggling of off canvas work on mobile devices
// http://foundation.zurb.com/forum/posts/1651-cant-get-off-canvas-to-toggle-on-mobile
$('a.left-off-canvas-toggle').on('click',function(){});
