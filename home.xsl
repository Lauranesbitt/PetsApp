<?xml-stylesheet href="home.xml" type="text/xml" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:template match="*">
        <xsl:applytemplates/>
            </xsl:template>
        <head>
            <title>Find a Home</title>
              <!-- 1. All Homes -->
            <h2>All Homes:</h2>
            <xsl:apply-templates select="/catalog/home"/>
        </head>
        <body>
          
            
        </body>
        
    </html>
    