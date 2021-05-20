<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Hoj2Cine</title>
            </head>
            <body>
                <h1 align="center">Listado de Películas</h1>

                <xsl:for-each select="Cine/Películas/Película[@Género='Drama']">
                    <xsl:sort select="Título[@Idioma='Español']" order="ascending"/>
                    <div>
                        <hr/>
                        <p>
                            <B>Datos de la película:
                                <xsl:value-of select="Título"/>
                            </B>
                        </p>
                        <hr/>
                        Director:
                        <xsl:value-of select="Director"/>

                        <p>Duración:
                            <xsl:value-of select="Duración"/>
                            <xsl:choose>

                                <xsl:when test="Duración &gt; 120"> (Largo)</xsl:when>
                                <xsl:when test="Duración &lt; 90"> (Corto)</xsl:when>
                                <xsl:otherwise> (Mediano)</xsl:otherwise>

                            </xsl:choose>
                        </p>
                        <p>Argumento:
                            <xsl:value-of select="Argumento"/>
                        </p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

