<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat" />
    
    <xsl:template name="nations_list">
        <xsl:for-each select="cia/nations/nation">
            <h2 style="clear: both;"><xsl:value-of select="demonym"/></h2>
            Население:<p class="post-info"><xsl:value-of select="population"/></p>
            Официални езици:  <xsl:for-each select="language">
                 <p class="post-info"> <xsl:value-of select="."/><xsl:element name="br"/></p>
            </xsl:for-each>
            Религии: <xsl:for-each select="religion">
                <p class="post-info"> <xsl:value-of select="."/><xsl:element name="br"/></p>
            </xsl:for-each>
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
                            <h1 style="text-align: center;">Народи и националности</h1> 
                            <xsl:call-template name="nations_list"></xsl:call-template>
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
