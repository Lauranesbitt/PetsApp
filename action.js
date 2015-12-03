$(document).ready(function(){
    $(".jumbotron").mouseenter(function(){
        $(this).animate({height: '+=5px'});
    });
    $(".jumbotron").mouseleave(function(){
        $(this).animate({height: '-=5px'});
     });
    /*$("#find").mouseenter(function(){
        $(this).animate({height: '+=10px'
       });
    });
       $("#find").mouseenter(function(){
        $(this).animate({height: '-=10px'
       });
    });*/
});