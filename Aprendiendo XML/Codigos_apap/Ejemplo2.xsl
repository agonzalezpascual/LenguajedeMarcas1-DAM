<?xml version='1.0' encoding="ISO-8859-1"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <HTML>
    <HEAD><TITLE>Ejemplo2.xsl</TITLE></HEAD>
    <BODY>
      <CENTER>
        <H2>Patron ajustado con el <U>nodo Raiz</U></H2>
        <xsl:apply-templates />
      </CENTER>
    </BODY>
 </HTML>
</xsl:template>

<xsl:template match="notas">
    <H3>Patron ajustado con el <U>nodo Notas</U></H3>
</xsl:template>

</xsl:stylesheet>
