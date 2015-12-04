$(document).ready(function(){
    $(".jumbotron").mouseenter(function(){
        $(this).animate({height: '+=7px'});
    });
    $(".jumbotron").mouseleave(function(){
        $(this).animate({height: '-=7px'});
     });
     $('#find').click(function(){
             $.ajax({
                 url:"data.php"
             }).done(function(data){
                 $('#action').html(data);
             });
     });
     $('#register').click(function(){
             $.ajax({
                 url:"register.html"
             }).done(function(data){
                 $('#action').html(data);
             });
     });
    /*$("#find").mouseenter(function(){
        $(this).animate({height: '+=10px'
       });
    });
       $("#find").mouseenter(function(){
        $(this).animate({height: '-=10px'
       });
    });*/

    function getRSS(){
        document.getElementById('rssfeed').innerHTML = "";
        $.get('rss.xml', function (data) {
            $(data).find("item").each(function () { //Searches through the rss.xml for any "item" tag
                var x = $(this);    //Stores the tag's contents in the variable x
                var myRSS = "<p>"+x.find("title").text()+" = "+x.find("link").text()+"<p>";  
                document.getElementById('rssfeed').innerHTML += myRSS;
            });
        });
    }
            
});
