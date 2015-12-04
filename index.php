<?php
$firstname = $_POST["firstname"];
$lastname = $_POST["lastname"];
$streetaddress = $_POST["streetaddress"];
$town= $_POST["town"];
$landline = $_POST["landline"];
$mobile = $_POST["mobile"];

if (file_exists('home.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('home.xml');

    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    //adding new child to the xml
    $newChild = $xml->addChild('name',$firstname);
    $newChild->addChild('lastname', $lastname);
    $newChild->addChild('street', $street);
    $newChild->addChild('town', $town);
    $newChild->addChild('landline', $landline);
     $newChild->addChild('mobile', $mobile);
    
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    echo '<u><b>This is the xml code from home.xml with new elements added:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

 file_put_contents('/home/ubuntu/workspace/home.xml', $xml->asXML());
}
  writeRSS();
    function writeRSS(){
        if (file_exists('rss.xml')) {
            //loads the xml and returns a simplexml object
            $rssxml = simplexml_load_file('rss.xml');
            $newChild = $rssxml->channel->addChild('item');
            $newChild->addChild('title', $author);
            $newChild->addChild('street', $street);
            $newChild->addChild('town', $town);
            $newChild->addChild('landline', $landline);
            $newChild->addChild('mobile', $mobile);
            file_put_contents('/home/ubuntu/workspace/rss.xml', $rssxml->asXML());
        }
    }
            
?>