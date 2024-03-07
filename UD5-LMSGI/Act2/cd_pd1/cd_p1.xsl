<?xml version="1.0" encoding="ISO-8859-2"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Lista de CDs de Musica</h1>
                <table border="1" bgcolor="#FFD700">
                    <tr bgcolor="#887788">
                        <th>Titulo del Album</th> 
                        <th>Artista</th>
                        <th>Titulos de Canciones</th>
                        <th>Sello Discografico</th>
                        <th>Anio de Publicación</th> 
                    </tr>
                    <xsl:for-each select="/catalogo/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="artista"/>
                            </td>
                            <td>
                                <xsl:for-each select="canciones/cancion">
                                    <xsl:value-of select="titulo"/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:value-of select="sello_discografico"/>
                            </td>
                            <td>
                                <xsl:value-of select="anno_publicacion"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
