<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <gym>
            <xsl:for-each select="gym/hall/equipment">
                <hall>
                    <name><xsl:call-template name="name"/></name>
                    <min_kg><xsl:call-template name="min_kg"/></min_kg>
                    <max_kg><xsl:call-template name="max_kg"/></max_kg>
                </hall>
            </xsl:for-each>
        </gym>
    </xsl:template>

    <xsl:template name="min_kg">
            <xsl:value-of select="min_kg"/>
    </xsl:template>

    <xsl:template name="name">
        <xsl:value-of select="name"/>
    </xsl:template>

    <xsl:template name="max_kg">
        <xsl:value-of select="max_kg"/>
    </xsl:template>

</xsl:stylesheet>