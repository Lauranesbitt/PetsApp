<?xml version="1.0" encoding="UTF-8"?>
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
					<!--<div style="background-color:teal;color:white;padding:4px">-->
					<div style="background-color:#BFBFBF;">
					    <span style="font-weight:bold"><xsl:apply-templates select="//home/contact"/><xsl:apply-templates/></span>
					</div>
				    
    		
			</body>
		</html>
	</xsl:template>
	
	<!--Name-->
	<xsl:template match="name">
		<p style="background-color:teal;color:white;padding:4px">
		<xsl:value-of select="."/>
		</p>
	</xsl:template>
	<!--Street-->
	<xsl:template match="street">
		<p>
		<xsl:value-of select="."/>
		</p>
	</xsl:template>
	<!--Town-->
	<xsl:template match="town">
		<p>
		<xsl:value-of select="."/>
		</p>
	</xsl:template>
	<!--Landline-->
	<xsl:template match="landline">
		<p>
		<xsl:value-of select="."/>
		</p>
	</xsl:template>
	<!--Mobile-->
	<xsl:template match="mobile">
		<p>
		<xsl:value-of select="."/>
		</p>
	</xsl:template>
</xsl:transform>