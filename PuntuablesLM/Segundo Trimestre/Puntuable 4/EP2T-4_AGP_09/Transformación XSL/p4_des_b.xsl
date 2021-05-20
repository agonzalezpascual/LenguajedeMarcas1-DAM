<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Listado de descargas</title>
            </head>
            <body>
                <h1 align="center">Listado de descargas</h1>

                <table align="center" border="1">
                    <xsl:for-each select="prueba2t/descarga">
                        <xsl:sort select="ipuser"/>
                        <tr bgcolor="teal" style="color:white" align="center">
                            <th>Usuario</th>
                            <th>Fecha</th>
                            <th>Duración</th>
                        </tr>
                        <tr>
                            <th>
                                <xsl:value-of select="ipuser"></xsl:value-of>
                            </th>
                            <th>
                                <xsl:value-of select="fecha/dia"></xsl:value-of>/<xsl:value-of
                                    select="fecha/mes"></xsl:value-of>/<xsl:value-of select="fecha/anio"></xsl:value-of>


                            </th>
                            <th>

                                <xsl:value-of select="duracion"></xsl:value-of>
                                (<xsl:value-of select="duracion/@magn"></xsl:value-of>)

                            </th>
                        </tr>
                        <tr bgcolor="brown" style="color:white" align="center">
                            <th colspan="3">
                                Ficheros
                            </th>
                        </tr>
                        <tr>
                            <th  colspan="3">
                            <xsl:for-each select="fichero">
                                <xsl:sort select="nombre"/>
                                <span  textalign="center" style="color:red;text-align:center">
                                    <xsl:value-of select="nombre"></xsl:value-of><br/>
                                </span>
                            </xsl:for-each>
</th>
                        </tr>
                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>