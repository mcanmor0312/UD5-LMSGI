<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:param name="artista_seleccionado">Carlos Salsa</xsl:param>

    <xsl:template match="/">
        <html>
            <head>
                <title>Canciones de <xsl:value-of select="$artista_seleccionado"/>
                </title>
                <style>
      table {
        width: 100%;
        border-collapse: collapse;
      }
      th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
      }
      th {
        background-color: #f2f2f2;
      }
                </style>
            </head>
            <body>
                <h2>Canciones de <xsl:value-of select="$artista_seleccionado"/>
                </h2>
                <table>
                    <tr>
                        <th>Título de la Canción</th>
                        <th>Duración</th>
                    </tr>
                    <xsl:apply-templates select="/catalogo/cd[artista=$artista_seleccionado]/canciones/cancion"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="cancion">
        <tr>
            <td>
                <xsl:value-of select="titulo"/>
            </td>
            <td>
                <xsl:value-of select="duracion"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>