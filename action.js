$(document).ready(function(){
    $(".jumbotron").mouseenter(function(){
        $(this).animate({height: '+=5px'});
    });
    $(".jumbotron").mouseleave(function(){
        $(this).animate({height: '-=5px'});
     });
     $('#action').click(function(){
         function loadPhp(){
             $.ajax({
                 url:"index.php"
             }).done(function(data){
                 $('#action').html(data);
             });
         };
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
