<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">Фитнес</h1>
                <table border="3" align="center">
                    <tr>
                        <th>ID</th>
                        <th>Име</th>
                        <th>Информация</th>
                    </tr>
                    <xsl:for-each select="gym/hall">
                        <tr>
                            <td>
                                <xsl:call-template name="id"/>
                            </td>
                            <td>
                                <xsl:call-template name="name"/>
                            </td>
                            <td>
                                <xsl:call-template name="note"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="id">
        <xsl:value-of select="id/."/>
    </xsl:template>

    <xsl:template name="name">
        <xsl:value-of select="name/."/>
    </xsl:template>

    <xsl:template name="note">
        <xsl:value-of select="note/."/>
    </xsl:template>

</xsl:stylesheet>