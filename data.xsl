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
				<div style="background-color:teal;color:white;padding:4px">
				    <span style="font-weight:bold">Name:<xsl:apply-templates select="//home/contact/name"/></span>
    			</div>
    			<div>
				    <span style="font-weight:bold">Address:<xsl:apply-templates select="//home/contact/address"/></span>
    			</div>

			</body>
		</html>
	</xsl:template>
	
	<!--Name-->
	<xsl:template match="name">
		<p>
		<xsl:value-of select="."/>
		</p>
	</xsl:template>
	<!--Address-->
	<xsl:template match="address">
		<p>
		<xsl:value-of select="."/>
		</p>
	</xsl:template>
</xsl:transform>