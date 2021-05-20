<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Hoj6Cine</title>
            </head>
            <body>
                <h1 align="center">Listado de Películas</h1>
                <xsl:for-each select="Cine/Películas/Película[@Género='Comedia']">
                    <xsl:sort select="Título" order="ascending"/>
                    <xsl:if test="(Título[@Idioma='Francés']) and (Duración &gt; '120')">
                        <div>
                            <hr/>

                            <p>
                                <B>Datos de la película:

                            <xsl:value-of select="Título"/></B></p>
                            <hr/>
                            <p>Director:
                                <xsl:value-of select="Director"/>
                            </p>
                        </div>
                    </xsl:if>
                </xsl:for-each>
                <hr/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

