<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 5</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="dia">
        <xsl:for-each select="tarea">
            <xsl:if test="asignatura='Inglés'">
                <p>La asignatura de <xsl:value-of select="asignatura"/> se da el dia <xsl:value-of select="../numdia"/> de <xsl:value-of select="hora-ini"/> a <xsl:value-of select="hora-fin"/> horas</p>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>