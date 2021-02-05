<?xml version="1.0" encoding="ISO-8859-1" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <HTML>
      <HEAD><TITLE>Ejemplo9.xsl</TITLE></HEAD>
      <BODY>
       <CENTER><H1>Listado de Alumnos</H1></CENTER>
        <DIV STYLE="TOP:10;LEFT:100;POSITION:RELATIVE">
            <xsl:for-each select="notas/alumno">
                <xsl:sort select="apellidos" order="ascending"/>
              <UL>
                <LI>
                  <xsl:value-of select="apellidos"/>,
       		  <xsl:value-of select="nombre"/>
	      	  (<xsl:value-of select="nexped"/>)
                </LI>
              </UL>
              <xsl:comment>
                Las notas obtenidas:
                <xsl:value-of select="nota-teoria"/>,
                <xsl:value-of select="nota-practica"/>-
                Nota final:<xsl:value-of select="nota-final"/>
              </xsl:comment>
            </xsl:for-each>
        </DIV>
      </BODY>
    </HTML>
  </xsl:template>

</xsl:stylesheet>