<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 5</title>
            </head>
            <body>
                <p>Las asignaturas que se inician antes de las 13h son:</p>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="dia">
        <xsl:for-each select="tarea">
            <xsl:if test="hora-ini &lt; 13">
                <p>
                   - <xsl:value-of select="asignatura"/>
                </p>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>