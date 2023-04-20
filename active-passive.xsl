<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="all-songs" as="document-node()+" select="collection('song_markup/?select=*.xml')"/>
    <xsl:variable name="bar-width" as="xs:double" select="60"/>
    <xsl:template name="xsl:initial-template">
    
        
        <svg viewBox="0 0 600 600">
           <!-- <xsl:apply-templates select="$all-songs//action"/> -->
            
            <!-- axis markers -->
            
            <!-- x axis -->
            <line x1="100" x2="500" y1="500" y2="500" stroke="black" stroke-linecap="square"/>
            
            <!-- y axes -->
            <line x1="100" x2="100" y1="500" y2="250" stroke="black" stroke-linecap="square"/>
           <!-- <line x1="150" x2="150" y1="100" y2="-250" stroke="black" stroke-dasharray="10" stroke-width="5" stroke-opacity="20" /> -->
            <line x1="500" x2="500" y1="500" y2="250" stroke="black" stroke-linecap="square"/>
            
            <!-- labels -->
            
            <rect x="175" y="100" width="{$bar-width}" height="{count($all-songs//action[@who = 'woman' and @type = 'active'])* 20}" fill="#126ccc" stroke="black"/>
            <rect x="250" y="100" width="{$bar-width}" height="{count($all-songs//action[@who = 'woman' and @type = 'passive'])* 20}" fill="#126ccc" stroke="black"/>
                       
        </svg>
    </xsl:template>
    
    
    <!-- <xsl:template match="song">
        <xsl:apply-templates select="//title"/>
    </xsl:template>
    <xsl:template match="title">
        <text><xsl:apply-templates/></text>
    </xsl:template> -->
    
    
    
    <xsl:template match="//action">
        <!-- woman bars -->
        
        
        
        <!-- man bars -->
        
    </xsl:template>
    
    
</xsl:stylesheet>