$(document).ready(function () {
   
    //remove title from .current link
    $(".current").removeAttr('title');
    
    

    
    // stickyNav
    $(window).scroll(function() {
        var y = $(window).scrollTop();

        if (y > 10) {
             $('#oppa').css({
                 "opacity":"0.5"
                 
             });

        } 
        else{
             $('#oppa').css({
                 "opacity":"1"
                 
             });
        }
        
    });

    $('#slider').leanSlider();



});
