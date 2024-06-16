<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:for-each select="/gym/hall/training">

            ID:  <xsl:value-of select="length"/>
            Име:  <xsl:value-of select="name"/>
            Информация: <xsl:value-of select="note"/>

        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>