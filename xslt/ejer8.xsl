<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 8</title>
            </head>
            <body>
                <p>Lista de  asignaturas ordenadas alfabeticamente:</p>
    <ul>
        <xsl:for-each select="horario/dia/tarea">
                <xsl:sort select="asignatura"/>
                  <li><xsl:value-of select="asignatura"/></li>
        </xsl:for-each>
   </ul>
</body>
</html>
    </xsl:template>
</xsl:stylesheet>