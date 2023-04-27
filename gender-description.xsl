<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="all-songs" as="document-node()+" select="collection('song_markup/?select=*.xml')"/>
    <xsl:variable name="bar-width" as="xs:double" select="60"/>
    <xsl:variable name="y-scale" as="xs:double" select="20"/>
    <xsl:template name="xsl:initial-template">
        <svg viewBox="0 0 600 600">
            
            <!-- x axis -->
            <line x1="100" x2="500" y1="500" y2="500" stroke="black" stroke-linecap="square"/>
            
            <!-- y axes -->
            <line x1="100" x2="100" y1="500" y2="300" stroke="black" stroke-linecap="square"/>
            <line x1="300" x2="300" y1="500" y2="300" stroke="black" stroke-dasharray="10" stroke-width="3" stroke-opacity="20"/>
            <line x1="500" x2="500" y1="500" y2="300" stroke="black" stroke-linecap="square"/>
            
            <!-- labels -->
            <!-- key -->
            <rect x="520" y="340" width="25" height="25" fill="white" stroke="black"/>
            <rect x="520" y="390" width="25" height="25" fill="white" stroke="black"/>
            <line x1="532.5" x2="532.5" y1="390" y2="415" stroke="black" stroke-dasharray="5" stroke-width="24.5" stroke-opacity="20"/>
            <text x="550" y="357">- Positive</text>
            <text x="550" y="407">- Negative</text>
            
            <!-- title -->
            <text x="300" y="280" text-anchor="middle">A Comparison of Positive and Negative Descriptions Based on Gender</text>
            
            <!-- female, male -->
            <text x="200" y="520" text-anchor="middle">Women</text>
            <text x="400" y="520" text-anchor="middle">Men</text>
            
            <!-- rectangle labeling -->
            <text x="155" y="350" text-anchor="middle">7</text>
            <text x="245" y="390" text-anchor="middle">5</text>
            <text x="355" y="410" text-anchor="middle">4</text>
            <text x="445" y="350" text-anchor="middle">7</text>
            
            <!-- y axis label -->
            <text x="-60" y="470" transform="rotate(270 0,400)">Number of Instances</text>
            
            
            <!-- rectangles -->
            <xsl:variable name="height1" as="xs:double" select="count($all-songs//description[@gender = 'female' and @tone = 'positive'])* $y-scale"/>
            <xsl:variable name="height2" as="xs:double" select="count($all-songs//description[@gender = 'female' and @tone = 'negative'])* $y-scale"/>
            <xsl:variable name="height3" as="xs:double" select="count($all-songs//description[@gender = 'male' and @tone = 'positive'])* $y-scale"/>
            <xsl:variable name="height4" as="xs:double" select="count($all-songs//description[@gender = 'male' and @tone = 'negative'])* $y-scale"/>
            <rect x="125" y="{500-$height1}" width="{$bar-width}" height="{$height1}" fill="#1565C0" stroke="black"/>
            <rect x="215" y="{500-$height2}" width="{$bar-width}" height="{$height2}" fill="#1565C0" stroke="black"/>
            <rect x="325" y="{500-$height3}" width="{$bar-width}" height="{$height3}" fill="#73b4ff" stroke="black"/>
            <rect x="415" y="{500-$height4}" width="{$bar-width}" height="{$height4}" fill="#73b4ff" stroke="black"/>
            
            <!-- shading -->
            <line x1="245" x2="245" y1="500" y2="400" stroke="#0d3e75" stroke-dasharray="10" stroke-width="59" stroke-opacity="20"/>
            <line x1="445" x2="445" y1="500" y2="360" stroke="#41648c" stroke-dasharray="10" stroke-width="59" stroke-opacity="20"/>
            
        </svg>
    </xsl:template>
    
</xsl:stylesheet>