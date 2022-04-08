<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 4</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="dia">
        <p>
        Día 
        <xsl:value-of select="numdia"/>
        </p>
        <xsl:for-each select="tarea">
            <ul>
                <li>
                    <p><xsl:value-of select="asignatura"/>
                    = Prioridad: 
                    <xsl:value-of select="@prioridad"/></p>
                </li>
                <p>
                De 
                <xsl:value-of select="hora-ini"/>
                 a 
                <xsl:value-of select="hora-fin"/></p>
            </ul>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>