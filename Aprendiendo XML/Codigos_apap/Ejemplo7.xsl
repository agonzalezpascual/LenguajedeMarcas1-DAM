<?xml version='1.0' encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <HTML>
      <HEAD><TITLE>Ejemplo7.xsl</TITLE></HEAD>
      <BODY>
        <CENTER><H1>Listado de Notas</H1></CENTER>
        <TABLE BORDER="1" ALIGN="CENTER">
          <TR ALIGN="CENTER" BGCOLOR="CYAN">
        	<TD COLSPAN="3">Alumno</TD>
        	<TD COLSPAN="3">NOTAS</TD>
	  </TR>
          <TR ALIGN="CENTER" BGCOLOR="YELLOW">
        	<TD>Nombre</TD>
	        <TD>Apellidos</TD>
		<TD>Matricula</TD>
 		<TD>Teoria</TD>
		<TD>Practica</TD>
		<TD>Final</TD>
          </TR>
           <xsl:for-each select="notas/alumno">
             <TR ALIGN="CENTER">
              <TD><xsl:value-of select="nombre"/></TD>
              <TD><xsl:value-of select="apellidos"/></TD>
              <TD><xsl:value-of select="nexped"/></TD>
              <TD><xsl:value-of select="nota-teoria"/></TD>
              <TD><xsl:value-of select="nota-practica"/></TD>
              <TD><B>
               <xsl:choose>
                <xsl:when test="nota-final > '9.0'">Sobresaliente</xsl:when>
                <xsl:when test="nota-final > '7.0'">Notable</xsl:when>
                <xsl:otherwise>Aprobado</xsl:otherwise>
               </xsl:choose>
              </B></TD>
            </TR>
          </xsl:for-each>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>

</xsl:stylesheet>
