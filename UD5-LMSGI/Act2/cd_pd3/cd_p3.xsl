<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="sello_discografico_seleccionado" select="'Alfaguara'"/>

<xsl:template match="/">
  <html>
  <head>
    <title>Canciones del Sello Discográfico: <xsl:value-of select="$sello_discografico_seleccionado"/></title>
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
    <h2>Canciones del Sello Discográfico: <xsl:value-of select="$sello_discografico_seleccionado"/></h2>
    <table>
      <tr>
        <th>Artista</th>
        <th>Título del Álbum</th>
        <th>Título de la Canción</th>
        <th>Duración</th>
      </tr>
      <xsl:apply-templates select="/catalogo/cd[sello_discografico = $sello_discografico_seleccionado]/canciones/cancion"/>
    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="cancion">
  <tr>
    <td><xsl:value-of select="../../artista"/></td>
    <td><xsl:value-of select="../../titulo"/></td>
    <td><xsl:value-of select="titulo"/></td>
    <td><xsl:value-of select="duracion"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>