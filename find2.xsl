<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">

<xsl:template match="/">
  <body>
    <h1><xsl:value-of select="catalog/dog"/></h1>
  </body>
</xsl:template>
</xsl:stylesheet>