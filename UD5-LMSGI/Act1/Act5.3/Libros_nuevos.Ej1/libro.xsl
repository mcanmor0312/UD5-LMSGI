<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca personal</h1>
                <table border="1" bgcolor="#FFD700">
                    <tr bgcolor="#887788">
                        <th>ISBN</th> 
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Numero de paginas</th>
                        <th>Precio</th> 
                    </tr>
                    <xsl:for-each select="libreria/libro[autor!='J.R.R. Tolkien']">
                    <xsl:sort select="precio" data-type="number"/>
                    <xsl:sort select="autor"/>
                        <tr bgcolor="#ADD8E6">
                            <td><xsl:value-of select="isbn"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="numPaginas"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
