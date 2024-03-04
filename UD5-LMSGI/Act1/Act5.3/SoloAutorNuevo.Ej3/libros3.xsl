<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>
<xsl:template match="/">

  <html>
  <head>
    <title>Libros de Calinic Alonso con precio superior a 10 €</title>
  </head>
  <body>
    <h2>Libros de Calinic Alonso con precio superior a 10 €</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Título</th>
        <th>Autor</th>
        <th>Editor</th>
        <th>ISBN</th>
        <th>Precio</th>
      </tr>
      <xsl:for-each select="libreria/libro[precio &gt; 10 and autor='Calinic Alonso']">
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="autor"/></td>
          <td><xsl:value-of select="editor"/></td>
          <td><xsl:value-of select="isbn"/></td>
          <td><xsl:value-of select="precio"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>

</xsl:template>
</xsl:stylesheet>