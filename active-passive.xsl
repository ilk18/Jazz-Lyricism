<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="all-songs" as="document-node()+" select="collection('song_markup/?select=*.xml')"/>
    <xsl:variable name="bar-width" as="xs:double" select="100"/>
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
            <!-- title -->
            <text x="300" y="200" text-anchor="middle" >Women's Actions: Active vs. Passive</text>
            <!-- active, passive -->
            <text x="160" y="520" text-anchor="start">Instances of Activity</text>
            <text x="310" y="520" text-anchor="start">Instances of Passivity</text>
            <!-- y label -->
            <text x="-30" y="470" transform="rotate(270 0,400)">Number of Instances</text>
            <!-- rectangle labels -->
            <text x="217" y="290">10</text>
            <text x="373" y="410">4</text>
            
            
            <!-- rectangles -->
            <xsl:variable name="height1" as="xs:double" select="count($all-songs//action[@who = 'woman' and @type = 'active'])* 20"/>
            <xsl:variable name="height2" as="xs:double" select="count($all-songs//action[@who = 'woman' and @type = 'passive'])* 20"/>
            <rect x="175" y="{500-$height1}" width="{$bar-width}" height="{$height1}" fill="#126ccc" stroke="black"/>
            <rect x="325" y="{500-$height2}" width="{$bar-width}" height="{$height2}" fill="#126ccc" stroke="black"/>
                       
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