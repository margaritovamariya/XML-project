<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 align="center">Тренировка</h1>
                <table border="3" align="center">
                    <tr>
                        <th>Дължина на тренировка</th>
                        <th>Брой хора</th>
                    </tr>
                    <xsl:for-each select="gym/hall/training">
                        <tr>
                            <td>
                                <xsl:call-template name="length"/>
                            </td>
                            <td>
                                <xsl:call-template name="number_of_people"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="length">
        <xsl:value-of select="length/."/>
    </xsl:template>

    <xsl:template name="number_of_people">
        <xsl:value-of select="number_of_people/."/>
    </xsl:template>

</xsl:stylesheet>