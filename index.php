<?php 
    

// Load the XML source
$xml = new DOMDocument;
$xml->load('home.xml');
$xsl = new DOMDocument;
$xsl->substituteEntities = true; 
$xsl->load('home.xsl');

  if(isset($_REQUEST['ok'])){
                $xml=DOMDocument("1,0","UTF-8");
                $xml->load("home.xml");
                $rootTag = $xml-> getElementsByTagName("document")->item(0);
                $dataTag = $xml -> createElelment("home");
                
                 $aTag = $xml -> createElelment("a", $_REQUEST['b']);
                  $bTag = $xml -> createElelment("b", $_REQUEST['b']);
                  
                  $dataTag->appendChild($aTag);
                  $dataTag->appendChild($aTag);
                  
                  $rootTag->appendChild($dataTag);
                  $mxl->save("home.xml");
}

?>
        <form action ="home.xml" method ="post">
        <input type = "text" name = "a"/>
        <input type = "text" name = "b"/>
        <input type = "submit" name = "ok" value = "add"/>
        </form>
      
  