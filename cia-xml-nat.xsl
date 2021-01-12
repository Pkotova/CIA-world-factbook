<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent='yes'/>
    <xsl:template match="/">
        <nations>
                        <xsl:for-each select="/*/*/nation">
                            <xsl:variable name="nation_list" select="@nation"/>
                                <nation>
                                    <demonym><xsl:value-of select="demonym"/></demonym>
                                    <population><xsl:value-of select="population"></xsl:value-of></population>
									<language><xsl:value-of select="language"/></language>
									<religion><xsl:value-of select="religion"/></religion>
                                </nation>
                            
                        </xsl:for-each>
                  
            
        </nations>
    </xsl:template>
</xsl:stylesheet>