<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Hoj1Cine</title>
            </head>
            <body>
                <h1 align="center">Listado de Películas</h1>
                <table border="1">
                    <xsl:for-each select="Cine/Películas/Película">
                        <xsl:sort select="Título"/>
                        <tr bgcolor="#ffff00" align="center">
                            <th>Título</th>
                            <th>Director</th>
                            <th>Duración</th>
                            <th>Metraje</th>

                        </tr>


                        <tr>

                            <td>
                                <center>
                                    <xsl:value-of select="Título"/>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <xsl:value-of select="Director"/>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <xsl:value-of select="Duración"/>
                                </center>
                            </td>

                            <th>
                                <xsl:choose>
                                    <xsl:when test="Duración &gt; 120">Largo</xsl:when>
                                    <xsl:when test="Duración &lt; 90">Corto</xsl:when>
                                    <xsl:otherwise>Mediano</xsl:otherwise>
                                </xsl:choose>
                            </th>
                        </tr>
                        <tr bgcolor="#ffff00">
                            <th colspan="4">Argumento</th>
                        </tr>
                        <tr bgcolor="#00ffff">
                            <td colspan="4">
                                <xsl:value-of select="Argumento"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

