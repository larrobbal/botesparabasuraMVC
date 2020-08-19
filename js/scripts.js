/*!
    * Start Bootstrap - Agency v6.0.2 (https://startbootstrap.com/template-overviews/agency)
    * Copyright 2013-2020 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-agency/blob/master/LICENSE)
    */
    (function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
        if (
            location.pathname.replace(/^\//, "") ==
                this.pathname.replace(/^\//, "") &&
            location.hostname == this.hostname
        ) {
            var target = $(this.hash);
            target = target.length
                ? target
                : $("[name=" + this.hash.slice(1) + "]");
            if (target.length) {
                $("html, body").animate(
                    {
                        scrollTop: target.offset().top - 72,
                    },
                    1000,
                    "easeInOutExpo"
                );
                return false;
            }
        }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $(".js-scroll-trigger").click(function () {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $("body").scrollspy({
        target: "#mainNav",
        offset: 74,
    });

    // Collapse Navbar
    var navbarCollapse = function () {
        if ($("#mainNav").offset().top > 100) {
            $("#mainNav").addClass("navbar-shrink");
        } else {
            $("#mainNav").removeClass("navbar-shrink");
        }
    };
    var showInfo = function()
    {
        if($("#mainNav").offset().top > 100) 
        {
            if($( window ).width()>991)
                $('#contactInfo').slideUp('300');
        }
        else
        {
            if($( window ).width()>991)
                $('#contactInfo').slideDown('300');
        }
    };
    // Collapse now if page is not at top
    navbarCollapse();
    showInfo();
    // Collapse the navbar when page is scrolled
    $(window).scroll(navbarCollapse);
    $(window).scroll(showInfo);
    $("a.cb-link.cb-anchor").hover(
        function() 
        {
          $("a.cb-link.cb-anchor span#social-float-layer").removeClass("social-float-layer");
        },
        function() 
        {
          $("a.cb-link.cb-anchor span#social-float-layer").addClass("social-float-layer")
        }
    );
    /*Masthead cards show img
    $('a.card-a').click(
        function()
        {
            var id = 'div#cat'+$(this).attr('id');
            if($(id).is(":hidden"))
            {
                
                var arr=$('#category-list').find('.card-body');
                for(var i=0;i<arr.length;i++)
                {
                    if($(arr[i]).is(':visible'))
                        $(arr[i]).slideUp('300');
                }
                $(id).slideDown('300');
            }
            else
                $(id).slideUp('300');
        }
    );*/
})(jQuery); // End of use strict