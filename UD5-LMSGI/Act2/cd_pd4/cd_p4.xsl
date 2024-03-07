<?xml version="1.0" encoding="ISO-8859-2"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="ISO-8859-2" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Canciones con Duración Menor a 5 Minutos</title>
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
                <h2>Canciones con Duración Menor a 5 Minutos</h2>
                <table>
                    <tr bgcolor="#FFFF00">
                        <th>Titulo de la Cancion</th>
                        <th>Duracion</th>
                        <th>Artista</th>
                        <th>Album</th>
                    </tr>
                    <xsl:for-each select="/catalogo/cd/canciones/cancion[substring-before(duracion, ':') &lt; 5]">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="duracion"/></td>
                            <td><xsl:value-of select="../../artista"/></td>
                            <td><xsl:value-of select="../../titulo"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
