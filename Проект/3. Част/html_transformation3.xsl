<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">Уред</h1>
                <table border="3" align="center">
                    <tr>
                        <th>Име</th>
                        <th>Килограми</th>
                    </tr>
                    <xsl:for-each select="gym/hall/equipment">
                        <tr>
                            <td>
                                <xsl:call-template name="name"/>
                            </td>
                            <td>
                                <xsl:call-template name="current_kg"/>
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

    <xsl:template name="current_kg">
        <xsl:value-of select="current_kg/."/>
    </xsl:template>

</xsl:stylesheet>