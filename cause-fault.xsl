<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="all-songs" as="document-node()+" select="collection('song_markup/?select=*.xml')"/>
    <xsl:variable name="bar-width" as="xs:double" select="40"/>
    <xsl:variable name="y-scale" as="xs:double" select="20"/>
    <xsl:template name="xsl:initial-template">
        <svg viewBox="-20 100 550 520">
            
            <!-- rectangle labels -->
            <line x1="50" x2="35" y1="500" y2="500" stroke="grey" stroke-linecap="square"/>
            <text x="35" y="498">0</text>
            <line x1="35" x2="510" y1="460" y2="460" stroke="grey" stroke-linecap="square"/>
            <text x="35" y="458">2</text>
            <line x1="35" x2="510" y1="420" y2="420" stroke="grey" stroke-linecap="square"/>
            <text x="35" y="418">4</text>
            <line x1="35" x2="510" y1="340" y2="340" stroke="grey" stroke-linecap="square"/>  
            <text x="35" y="338">8</text>
            <line x1="35" x2="510" y1="260" y2="260" stroke="grey" stroke-linecap="square"/>  
            <text x="32" y="258">12</text>
            <line x1="35" x2="510" y1="180" y2="180" stroke="grey" stroke-linecap="square"/>  
            <text x="32" y="178">16</text>
            
            <!-- x axis -->
            <line x1="50" x2="510" y1="500" y2="500" stroke="black" stroke-linecap="square"/>
            
            <!-- y axis -->
            <line x1="50" x2="50" y1="500" y2="180" stroke="black" stroke-linecap="square"/>
            
            <!-- labels -->
            <!-- title -->
            <text x="300" y="150" text-anchor="middle">Frequency and Causes of Relationship Failure</text>
            
            <!-- faults -->
            <!-- text -->
            <text x="70" y="520">No Love</text>
            <text x="140" y="540">Abuse</text>
            <text x="175" y="520">Abandonment</text>
            <text x="230" y="540">Money Troubles</text>
            <text x="320" y="520">Event</text>
            <text x="370" y="540">Cheating</text>
            <text x="440" y="520">Death</text>
            
            <!-- lines -->
            <line x1="160" x2="160" y1="500" y2="525" stroke="black" stroke-linecap="square"/>
            <line x1="280" x2="280" y1="500" y2="525" stroke="black" stroke-linecap="square"/>
            <line x1="400" x2="400" y1="500" y2="525" stroke="black" stroke-linecap="square"/>
            
            <!-- y label -->
            <text x="0" y="410" transform="rotate(270 0,400)">Frequency Found</text>
           
            <!-- rectangles -->
            <xsl:variable name="height1" as="xs:double" select="count($all-songs//cause[@fault = 'no love'])* $y-scale"/>
            <xsl:variable name="height2" as="xs:double" select="count($all-songs//cause[@fault = 'abuse'])* $y-scale"/>
            <xsl:variable name="height3" as="xs:double" select="count($all-songs//cause[@fault = 'abandonment'])* $y-scale"/>
            <xsl:variable name="height4" as="xs:double" select="count($all-songs//cause[@fault = 'money troubles'])* $y-scale"/>
            <xsl:variable name="height5" as="xs:double" select="count($all-songs//cause[@fault = 'event'])* $y-scale"/>
            <xsl:variable name="height6" as="xs:double" select="count($all-songs//cause[@fault = 'cheating'])* $y-scale"/>
            <xsl:variable name="height7" as="xs:double" select="count($all-songs//cause[@fault = 'death'])* $y-scale"/>
            <rect x="80" y="{500-$height1}" width="{$bar-width}" height="{$height1}" fill="#1565C0" stroke="black"/>
            <rect x="140" y="{500-$height2}" width="{$bar-width}" height="{$height2}" fill="#1565C0" stroke="black"/>
            <rect x="200" y="{500-$height3}" width="{$bar-width}" height="{$height3}" fill="#1565C0" stroke="black"/>
            <rect x="260" y="{500-$height4}" width="{$bar-width}" height="{$height4}" fill="#1565C0" stroke="black"/>
            <rect x="320" y="{500-$height5}" width="{$bar-width}" height="{$height5}" fill="#1565C0" stroke="black"/>
            <rect x="380" y="{500-$height6}" width="{$bar-width}" height="{$height6}" fill="#1565C0" stroke="black"/>
            <rect x="440" y="{500-$height7}" width="{$bar-width}" height="{$height7}" fill="#1565C0" stroke="black"/>
            
            
        </svg>
    </xsl:template>
    
</xsl:stylesheet>