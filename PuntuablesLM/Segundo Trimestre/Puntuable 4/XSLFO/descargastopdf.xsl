<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="prueba2t">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="mi-docum">
                    <fo:region-body margin="2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="mi-docum">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table>
                            <fo:table-body>
                                <xsl:for-each select="descarga">
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold">
                                            <fo:block>Usuario</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold">
                                            <fo:block>Fecha</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold">
                                            <fo:block>Duración</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1px black" text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="ipuser"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="fecha/dia"/>/<xsl:value-of select="fecha/mes"/>/
                                                <xsl:value-of select="fecha/anio"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1px black" text-align="center">
                                            <fo:block>
                                                <xsl:value-of select="duracion"/>(<xsl:value-of
                                                    select="duracion/@magn"/>)
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1px black" text-align="center" font-weight="bold" number-colums-spanned="3">
                                            <fo:block>Ficheros</fo:block>
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