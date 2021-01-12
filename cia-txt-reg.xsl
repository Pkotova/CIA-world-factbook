<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="text" indent="no" />
    
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
    
    <xsl:template match="/">
++++++++++++++++++++++++++++++++++
+          Региони		         +
++++++++++++++++++++++++++++++++++
        <xsl:value-of select="$newline"/>
        
        <xsl:for-each select="/cia/regions/region">
            <xsl:value-of select="name"/>
---------------------------------            
Континент/Регион:           <xsl:value-of select="continent"/>
Климат:                     <xsl:value-of select="climate"/>
Часова зона:                <xsl:value-of select="timezone"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>