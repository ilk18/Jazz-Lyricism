<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="all-songs" as="document-node()+" select="collection('../song_markup/?select=*.xml')"/>
    <xsl:variable name="bar-width" as="xs:integer" select="20"/>
    <xsl:variable name="bar-spacing" as="xs:double" select="$bar-width div 2"/>
    <xsl:variable name="total-bar-width" as="xs:double" select="$bar-width + $bar-spacing"/>
    <xsl:variable name="xAxisLength" as="xs:double" select="count(//mental-health) * $barInterval + $interbarSpacing"/>
    <xsl:variable name="yScale" select="300" as="xs:integer"/>
    
    <xsl:template match="/">
        <svg height="400" viewBox="-20 -50 800 600">
            <line y1="1000" y2="0" x1="0" x2="0" stroke="black"/>
            <line y1="0" y2="0" x1="0" x2="{$total-bar-width}" stroke="blue"/>   
        </svg>
    </xsl:template>
   
   <xsl:template match="//mental-health">
        <xsl:variable name="bar1" as="xs:double" select="count($all-songs//mental-health[@who = 'woman' and @type = 'positive'])* $y-scale"/>
        <xsl:variable name="bar2" as="xs:double" select="count($all-songs//mental-health[@who= 'woman' and @type= 'negative'])* $y-scale"/>
    </xsl:template>
</xsl:stylesheet>