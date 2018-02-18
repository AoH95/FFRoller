function Caroussel(){

    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items:1,
        nav:true,
        loop:true,
        margin:100,
        stagePadding:200,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true,
                loop:true,
                margin:5,
                stagePadding:40,
            },
            600:{
                items:1,
                nav:true,
                loop:true,
                margin:100,
                stagePadding:100,
            },
            1293:{
                items:3,
                margin:120,
                stagePadding:70,
            }
        }
    }); 
}

function ScrollSmooth(){
        var toHeight = document.getElementById("intro").offsetHeight;
        //console.log(toHeight);
        $('.scrollTo').on('click',function(){
            //console.log('scroll fait');
            $('html,body').animate({
                scrollTop:toHeight,
            }, 800, function(){
                $('html,body').clearQueue();
            });
        });
}

function FixMenu(){
    var scroll = $(window).scrollTop();
    var menu = $("header");
    var positionElementInPage = menu.offset().top;
    if(largeurPage < 940){
        var menu = $("header");
        var positionElementInPage = menu.offset().top;
    }
    
$(window).scroll(
    function() {
        var scroll = $(window).scrollTop();
        //console.log(scroll, positionElementInPage);
        if (scroll > positionElementInPage+100) {
            // fixed
            menu.addClass("fixed");
        }else if(scroll < positionElementInPage+100 || scroll == positionElementInPage+100){
            //unfixed
            //console.log('ololo');
            menu.removeClass("fixed");
        }        

    }
  );
}

$(document).ready(function(){
    Caroussel();
    FixMenu();
    });