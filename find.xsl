<?xml-stylesheet href="find.xml" type="text/xml" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<a href = "update.rss"/>
    <xsl:template match="*">
        <xsl:applytemplates/>
            </xsl:template>
        <head>
            <title>Find a dog</title>
              <!-- 1. All Dogs -->
            <h2>All Dogs:</h2>
            <xsl:apply-templates select="/catalog/dog"/>
        </head>
        <body>
          
            
        </body>
        
    </html>
    
    