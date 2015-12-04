<?php

// Load the XML source
$xml = new DOMDocument;
$xml->load('data.xml');
$xsl = new DOMDocument;
$xsl->substituteEntities = true; 
$xsl->load('data.xsl');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);

?>