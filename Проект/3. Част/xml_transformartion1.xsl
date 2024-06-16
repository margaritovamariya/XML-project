<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <gym>
            <xsl:for-each select="gym/hall">
                <hall>
                    <id><xsl:call-template name="id"/></id>
                    <name><xsl:call-template name="name"/></name>
                    <note><xsl:call-template name="note"/></note>
                </hall>
            </xsl:for-each>
        </gym>
    </xsl:template>

    <xsl:template name="id">
            <xsl:value-of select="id"/>
    </xsl:template>

    <xsl:template name="name">
        <xsl:value-of select="name"/>
    </xsl:template>

    <xsl:template name="note">
        <xsl:value-of select="note"/>
    </xsl:template>

</xsl:stylesheet>