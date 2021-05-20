<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Hoj4Cine</title>
            </head>
            <body>
                <h1 align="center">Listado de Películas</h1>

                <xsl:for-each select="Cine/Películas/Película">
                    <xsl:sort select="Título" order="descending"/>
                    <xsl:if test="Director=Intérprete">
                        <xsl:if test="Director=Intérprete">
                        <div>
                            <hr/>
                            <p><B>Datos de la película:
                            <xsl:value-of select="Título"/></B></p>
                            <hr/>
                            <p>Director:
                                <xsl:value-of select="Director"/>
                            </p>
                            <p>Intérprete:
                                <xsl:if test="Director=Intérprete">
                                    <xsl:value-of select="Intérprete"/>
                                </xsl:if>
                            </p>
                            <p>Argumento:
                                <xsl:value-of select="Argumento"/>
                            </p>
                        </div>
                    </xsl:if>
                    </xsl:if>
                </xsl:for-each>
                <hr/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

