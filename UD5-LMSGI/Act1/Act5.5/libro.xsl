<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Rojo si tiene mas de 150 paginas</h1>
                <table border="1" bgcolor="#FFD700">
                    <tr bgcolor="#887788">
                        <th>ISBN</th>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Numero de paginas</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="numPaginas &gt; 150">
                                    <td bgcolor="#00ff00"><xsl:value-of select="isbn"/></td>
                                    <td bgcolor="#00ff00"><xsl:value-of select="titulo"/></td>
                                    <td bgcolor="#00ff00"><xsl:value-of select="autor"/></td>
                                    <td bgcolor="#ff0000"><xsl:value-of select="numPaginas"/></td>
                                    <td bgcolor="#00ff00"><xsl:value-of select="precio"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="#00ff00"><xsl:value-of select="isbn"/></td>
                                    <td bgcolor="#00ff00"><xsl:value-of select="titulo"/></td>
                                    <td bgcolor="#00ff00"><xsl:value-of select="autor"/></td>
                                    <td bgcolor="#00ff00"><xsl:value-of select="numPaginas"/></td>
                                    <td bgcolor="#00ff00"><xsl:value-of select="precio"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
