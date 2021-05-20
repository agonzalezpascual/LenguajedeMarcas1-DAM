<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="prueba2t">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="mi-docum" page-width="210mm" page-height="297mm" margin-top="5mm" margin-bottom="5mm" margin-left="2.5mm" margin-right="2.5mm">
                    <fo:region-body margin-left="38mm" margin-right="38mm" margin-top="10mm" margin-bottom="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="mi-docum">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block text-align="center">
                        <fo:inline font-size="20px" font-weight="bold">Listado de descargas</fo:inline>
                        <fo:table>
                            <fo:table-body>
                                <xsl:for-each select="./descarga">
                                    <xsl:sort select="ipuser"/>
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold" background-color="teal" color="white">
                                            <fo:block>Usuario</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold" background-color="teal" color="white">
                                            <fo:block>Fecha</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold" background-color="teal" color="white">
                                            <fo:block>Duración</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1px black" text-align="center">
                                            <fo:block font-weight="bold">
                                                <xsl:value-of select="ipuser"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center">
                                            <fo:block font-weight="bold">
                                                <xsl:value-of select="fecha/dia"/>/<xsl:value-of select="fecha/mes"/>/<xsl:value-of select="fecha/anio"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center">
                                            <fo:block font-weight="bold">
                                                <xsl:value-of select="duracion"/>
                                                (<xsl:value-of
                                                    select="duracion/@magn"/>)
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold"
                                                       number-columns-spanned="3"  background-color="brown" color="white">
                                            <fo:block>Ficheros</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold"
                                                       number-columns-spanned="3">

                                            <xsl:for-each select="fichero">
                                                <xsl:sort select="nombre"/>
                                                <fo:block color="red">
                                                    <xsl:value-of select="nombre"></xsl:value-of>
                                                </fo:block>
                                            </xsl:for-each>

                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>