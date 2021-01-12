<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
                    <countries>
                        <xsl:for-each select="/*/*/country">
                            <xsl:variable name="coutry_list" select="@country"/>
                                <country>
                                    <name><xsl:value-of select="name"/></name>
                                    <image_flag><xsl:value-of select="image_flag"/></image_flag>
                                    <image_blazon><xsl:value-of select="image_blazon"/></image_blazon>
                                    <capital><xsl:value-of select="capital"/></capital>
                                    <anthem>
                                        <xsl:for-each select="anthem/song">
                                                <title><xsl:value-of select="title"/></title>
                                                <author><xsl:value-of select="author"/></author>
                                                <year><xsl:value-of select="year"/></year>
                                        </xsl:for-each>
                                    </anthem>
                                </country>
                        </xsl:for-each>
                    </countries>
    </xsl:template>
</xsl:stylesheet>