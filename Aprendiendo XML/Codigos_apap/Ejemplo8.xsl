<?xml version='1.0' encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
    <xsl:element name="HTML">
      <xsl:element name="HEAD">
        <xsl:element name="TITLE">
          Ejemplo8.xsl
        </xsl:element>
      </xsl:element>
      <xsl:element name="BODY">
       <xsl:element name="CENTER">
        <xsl:element name="H1">
              Listado de Notas
         </xsl:element>
        </xsl:element>
        <xsl:element name="TABLE">
         <xsl:attribute name="BORDER">1</xsl:attribute>
         <xsl:attribute name="ALIGN">CENTER</xsl:attribute>
          <xsl:element name="TR">
           <xsl:attribute name="BGCOLOR">CYAN</xsl:attribute>
           <xsl:attribute name="ALIGN">CENTER</xsl:attribute>
             <xsl:element name="TD">
               <xsl:attribute name="COLSPAN">3</xsl:attribute>
                Alumno
             </xsl:element>
             <xsl:element name="TD">
               <xsl:attribute name="COLSPAN">3</xsl:attribute>
                NOTAS
             </xsl:element>
           </xsl:element>
          <xsl:element name="TR">
           <xsl:attribute name="BGCOLOR">YELLOW</xsl:attribute>
           <xsl:attribute name="ALIGN">CENTER</xsl:attribute>
             <xsl:element name="TD">
                Nombre
             </xsl:element>
             <xsl:element name="TD">
                Apellidos
             </xsl:element>
             <xsl:element name="TD">
                Matricula
             </xsl:element>
             <xsl:element name="TD">
                Teoria
             </xsl:element>
             <xsl:element name="TD">
                Practica
             </xsl:element>
             <xsl:element name="TD">
                Final
             </xsl:element>
          </xsl:element>
          <xsl:for-each select="notas/alumno">
           <xsl:element name="TR">
            <xsl:attribute name="ALIGN">CENTER</xsl:attribute>
             <xsl:element name="TD">
               <xsl:value-of select="nombre"/>
             </xsl:element>
             <xsl:element name="TD">
               <xsl:value-of select="apellidos"/>
             </xsl:element>
             <xsl:element name="TD">
               <xsl:value-of select="nexped"/>
             </xsl:element>
             <xsl:element name="TD">
               <xsl:value-of select="nota-teoria"/>
             </xsl:element>
             <xsl:element name="TD">
               <xsl:value-of select="nota-practica"/>
             </xsl:element>
             <xsl:element name="TD">
               <xsl:element name="B">
<xsl:copy>
                  <xsl:choose>
                    <xsl:when test="nota-final > '9.0'">Sobresaliente</xsl:when>
                    <xsl:when test="nota-final > '7.0'">Notable</xsl:when>
                    <xsl:otherwise>Aprobado</xsl:otherwise>
                  </xsl:choose>
</xsl:copy>
                </xsl:element>
              </xsl:element>
           </xsl:element>
          </xsl:for-each>
       </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
