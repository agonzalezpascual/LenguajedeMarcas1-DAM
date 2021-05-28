<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Listado de descargas</title>

            </head>
            <body>
                <h1 align = "center">
                    <b>
                        <u>Listado de descargas</u>
                    </b>
                </h1>
                <xsl:apply-templates/>
                <hr/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="descarga">
        <hr/>
        <p>
            <xsl:apply-templates select="fecha"/>
        </p>
        <p>
            <xsl:apply-templates select="duracion"/>
            <br/>
            <xsl:apply-templates select="ipuser"/>
        </p>
        <b>****Fichero****</b>
        <p>
            <xsl:apply-templates select="fichero"/>
        </p>
    </xsl:template>

    <xsl:template match="fecha">
        <p>
            <b>Descarga con fecha: <xsl:value-of select="dia"/>/<xsl:value-of select="mes"/>/<xsl:value-of select="anio"/></b>
        </p>
    </xsl:template>

    <xsl:template match="duracion">
        <span style="color:red">
            Duración: <xsl:value-of select="."/> (<xsl:value-of select="@magn"/>)
        </span>

    </xsl:template>

    <xsl:template match="ipuser">
        <span style="color:red">
            IP:
            <xsl:value-of select="."/>
        </span>

    </xsl:template>


    <xsl:template match="fichero">
        <span style="color:green">
            <xsl:if test="tipo = 'Música'">
                <xsl:value-of select="nombre"/> (<xsl:value-of select="tipo"/>)
                <br/>
            </xsl:if>
        </span>

    </xsl:template>

</xsl:stylesheet>