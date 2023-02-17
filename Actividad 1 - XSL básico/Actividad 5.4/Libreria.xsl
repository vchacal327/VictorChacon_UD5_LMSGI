<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca</h1>
    <table>
        <tr bgcolor="#887788">
            <th>ISBN</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <tr>
            <xsl:choose>
                <xsl:when test="precio &lt; 25.00">
                    <td bgcolor="#00ff00">
                        <xsl:value-of select="isbn"/>
                    </td>
                    <td bgcolor="#00ff00">
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td bgcolor="#00ff00">
                        <xsl:value-of select="autor"/>
                    </td>
                    <td bgcolor="#00ff00">
                        <xsl:value-of select="precio"/>
                    </td>
                </xsl:when>
                <xsl:when test="precio &gt; 25.00">
                    <td bgcolor="#ff0000">
                        <xsl:value-of select="isbn"/>
                    </td>
                    <td bgcolor="#ff0000">
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td bgcolor="#ff0000">
                        <xsl:value-of select="autor"/>
                    </td>
                    <td bgcolor="#ff0000">
                        <xsl:value-of select="precio"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td bgcolor="#0000ff">
                        <xsl:value-of select="isbn"/>
                    </td>
                    <td bgcolor="#0000ff">
                        <xsl:value-of select="titulo"/>
                    </td>
                    <td bgcolor="#0000ff">
                        <xsl:value-of select="autor"/>
                    </td>
                    <td bgcolor="#0000ff">
                        <xsl:value-of select="precio"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>