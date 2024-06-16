<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">Фитнес</h1>
                <table border="3" align="center">
                    <tr>
                        <th>Име</th>
                        <th>Позволено за мъже</th>
                        <th>Позволено за жени</th>
                    </tr>
                    <xsl:for-each select="gym/hall">
                        <tr>
                            <td>
                                <xsl:call-template name="name"/>
                            </td>
                            <td>
                                <xsl:call-template name="male_allowed"/>
                            </td>
                            <td>
                                <xsl:call-template name="female_allowed"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="name">
        <xsl:value-of select="name/."/>
    </xsl:template>

    <xsl:template name="male_allowed">
        <xsl:value-of select="male_allowed/."/>
    </xsl:template>

    <xsl:template name="female_allowed">
        <xsl:value-of select="female_allowed/."/>
    </xsl:template>

</xsl:stylesheet>