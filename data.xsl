<?xml version="1.0" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"	version="1.0">
	<xsl:template match="*">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="text()">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="/">
		<html>
			<head>
				<title>All Homes</title>
			</head>
			<body>
				<!--Print all homes-->
				<h2>All Homes</h2>
				<xsl:apply-templates select="//home"/>
			</body>
		</html>
	</xsl:template>
	
	<!--All dogs-->
	<xsl:template match="home">
		<xsl:value-of select="."/>
	</xsl:template>
</xsl:transform>