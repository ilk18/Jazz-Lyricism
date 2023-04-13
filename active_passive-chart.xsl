<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="bar-width" as="xs:double" select="20"/>
    
    <svg>
        
        <!-- axis markers -->
        
        <!-- x axis -->
        
        <!-- y axes -->
        
        <!-- labels -->
        
        <xsl:apply-templates select="song"/>
    </svg>
    
   
    <xsl:template match="song">
        <!-- woman bars -->
        
        <!-- man bars -->
        
    </xsl:template>
    
    
</xsl:stylesheet>