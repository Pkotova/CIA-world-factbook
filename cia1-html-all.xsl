<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat" />
    
    <xsl:template name="countries_list">
        <xsl:for-each select="/cia/countries/country">
            <h2 style="clear: both;"><xsl:value-of select="name"/></h2>
            <p class="post-info">Столица | <xsl:value-of select="capital"/><span style="float: right;"></span></p>
            <div style="margin-left: 10px; margin-top: 5px;">
                <xsl:choose>
                    <xsl:when test="image_flag">
                        <img src="Images/{image_flag}" alt="" style="float: left; margin-right: 10px;"/>
                    </xsl:when>
                </xsl:choose>
                <xsl:choose>
                    <xsl:when test="image_blazon">
                        <img src="Images/{image_blazon}" alt="" style="float: left; margin-right: 10px;"/>
                    </xsl:when>
                </xsl:choose>
                <p style="text-align: justify; padding: 0; text-indent: 15px;">
                    Химн:   <em><xsl:value-of select="anthem/song"/></em> 				
                </p>
                <p style="text-align: justify; padding: 0; text-indent: 15px;">
                        <xsl:variable name="regions_list" select="@region"/>
                        <xsl:for-each select="/*/regions/region">
                            <xsl:if test = "$regions_list = @con_id">
                                Регион: <xsl:value-of select="continent"/>
                            </xsl:if>   
                        </xsl:for-each>
                </p>
            </div>
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
                            <h1 style="text-align: center;">Държави, представители от всички континенти</h1> 
                            <xsl:call-template name="countries_list"></xsl:call-template>
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
