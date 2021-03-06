<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="text" indent="no" />
    
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
    
    <xsl:template match="/">
++++++++++++++++++++++++++++++++++
+          Организации           +
++++++++++++++++++++++++++++++++++
        <xsl:value-of select="$newline"/>
        
        <xsl:for-each select="/cia/organizations/organization">
            <xsl:value-of select="name"/>
---------------------------------            
Име:          <xsl:value-of select="org_name"/>
Година:       <xsl:value-of select="year_establishment"/>г.
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>