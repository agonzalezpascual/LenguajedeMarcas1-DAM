<?xml version='1.0' encoding="ISO-8859-1"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <HTML>
    <HEAD><TITLE>Ejemplo5.xsl</TITLE></HEAD>
    <BODY>
      <CENTER>
        <H2>Listado de Notas</H2>
       <HR></HR>
        <xsl:apply-templates select="notas/alumno"/>
       <HR></HR>
      </CENTER>
    </BODY>
 </HTML>
</xsl:template>

<xsl:template match="alumno">
    <P><B>Nombre y Apellidos: </B>
       <xsl:value-of select="nombre" />,
       <xsl:value-of select="apellidos" /></P>
    <P><B>Notas: </B>
       <xsl:value-of select="nota-teoria" /> --- 
       <xsl:value-of select="nota-practica" /> --- 
       <B><xsl:value-of select="nota-final" /></B></P>
</xsl:template>

</xsl:stylesheet>
