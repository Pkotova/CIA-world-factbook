<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat" />
    
    <xsl:template name="organization_list">
        <xsl:for-each select="/cia/organizations/organization">
            <xsl:sort select="current()"/>
            <xsl:variable name="code" select="@org_id"/>
            <h2 style="clear: both; font-size: 1.2em;letter-spacing: 0;">[<xsl:value-of select="@org_id"/>] 
                <xsl:value-of select="current()"/></h2>
            <ul>
                <xsl:for-each select="/*/*/country">
                    <xsl:variable name="country_list" select="@organization"/>
                    <xsl:if test="contains($country_list, $code)">
                        <li><xsl:value-of select="name"/></li>
                    </xsl:if>
                </xsl:for-each>
            </ul>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" lang="bg">
            <head>
                <title>Държави</title>
                <meta http-equiv="content-type" content="application/html; charset=utf-8" />
                <link rel="stylesheet" href="images/map.css" type="text/css" />
            </head>
            <body>
                <div id="wrap">
                    <div id="header">			
                        <h1 id="logo-text">
                            <a href="#" style="left: 275px; top: 150px; font-size: 1.4em;">Данни за страни в света</a>
                        </h1>		
                    </div>
                    <div id="content">
                        <div id="main" style="width: 860px;">
                            <h1 style="text-align: center;">Организации и държави членки</h1> 
                            <xsl:call-template name="organization_list"></xsl:call-template>
                        </div>
                    </div>
                    <div id="footer">
                        <p style="text-align: left;">
                            Петя Котова @фн. 71866 | Курсова работа по XML - технологии | Тема: Данни за страни в света (CIA World factbook)
         
                        </p>			
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
