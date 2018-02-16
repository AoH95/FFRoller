var largeurPage = window.innerWidth;
var hauteurPage = window.innerHeight;

window.onload = function(event){
    var largeurPage = window.innerWidth;
    var hauteurPage = window.innerHeight;
    var portraitOrientation = window.matchMedia("(orientation:portrait)");
    $('.intro').css('height',hauteurPage);
    if(largeurPage > 1293 ){
       //console.log('au dessus de 1293');
        }else if(largeurPage < 1293 ){
            if ( portraitOrientation.matches ) {
                //console.log('portrait');
                $('.nav_mobile').css('height',hauteurPage);
                $('.intro').css('height',hauteurPage);
            } else {
                //console.log('au dessous de 1293');
                //console.log('paysage');
                $('.nav_mobile').css('height',largeurPage);
                $('.intro').css('height',hauteurPage);
            }
    }
}

window.onresize = function(event) {
    var largeurPage = window.innerWidth;
    var hauteurPage = window.innerHeight;
    var portraitOrientation = window.matchMedia("(orientation:portrait)");
    $('.intro').css('height',hauteurPage);
    if(largeurPage > 1293 ){
        //console.log('au dessus de 1293');
        }else if(largeurPage < 1293 ){
            if ( portraitOrientation.matches ) {
                //console.log('portrait');
                $('.nav_mobile').css('height',hauteurPage);
                $('.intro').css('height',hauteurPage);
            } else {
                //console.log('au dessous de 1293');
                //console.log('paysage');
                $('.nav_mobile').css('height',largeurPage);
                $('.intro').css('height',hauteurPage);
            }
    }
}

function menuBurger(){
    $('#burger-icon').click(function(){
        var portraitOrientation = window.matchMedia("(orientation:portrait)");
        var hauteurPage = window.innerHeight;
        var largeurPage = window.innerWidth;
        //$('.intro').hide();
        if(largeurPage > 1293 ){
            //console.log('au dessus de 1293');
            }else if(largeurPage < 1293 ){
                if ( portraitOrientation.matches ) {
                    //console.log('portrait');
                    $('.nav_mobile').css('height',hauteurPage);
                } else {
                    //console.log('au dessous de 1293');
                    //console.log('paysage');
                    $('.nav_mobile').css('height',largeurPage);
                }
        }
            $('.nav_mobile').slideToggle(500);
            $('#burger-icon2').show();
    });
    
    $('#burger-icon2').click(function(){
            $('.intro').show();
            $('.nav_mobile').slideToggle(500);
            $('#burger-icon').show();
    });
}

$(document).ready(function() {

menuBurger();    
});


